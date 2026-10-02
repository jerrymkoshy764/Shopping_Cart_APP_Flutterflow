const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions
  .region("us-west1")
  .auth.user()
  .onDelete(async (user) => {
    let firestore = admin.firestore();
    let userRef = firestore.doc("User/" + user.uid);
    await firestore
      .collection("User")
      .where("email", "==", user.uid)
      .get()
      .then(async (querySnapshot) => {
        for (var doc of querySnapshot.docs) {
          await doc.ref
            .collection("Carts")
            .get()
            .then(async (q) => {
              for (var d of q.docs) {
                console.log(`Deleting document ${d.id} from collection Carts`);
                await d.ref.delete();
              }
            });
        }
      });
    await firestore.collection("User").doc(user.uid).delete();
  });
