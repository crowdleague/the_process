import * as admin from 'firebase-admin';

export class FirebaseAdmin {
  
  private static instance: FirebaseAdmin;
  
  private constructor() { 
    admin.initializeApp();

    // Configure firestore settings.
    admin.firestore().settings({ ignoreUndefinedProperties: true });
  }

  public static getInstance(): FirebaseAdmin {
    if (!FirebaseAdmin.instance) {
      FirebaseAdmin.instance = new FirebaseAdmin();
    }

    return FirebaseAdmin.instance;
  }

  public getFirestore() : FirebaseFirestore.Firestore {
    return admin.firestore();
  }

  public getAuth() : admin.auth.Auth {
    return admin.auth();
  }


  // private static initialized = false;

  // private static initialize() { 
  //   admin.initializeApp();
  //   this.initialized = true;
  // }

  // public static getFirestore() : FirebaseFirestore.Firestore {
  //   if (!this.initialized) this.initialize();

  //   return admin.firestore();
  // }
    
  // }

}