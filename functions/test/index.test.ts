import * as funcTest from "firebase-functions-test";
import * as admin from 'firebase-admin';
import { stubObject } from "ts-sinon";

describe("firebase cloud functions", () => {
  let myFunctions : any, adminInitStub : any;
  const tester = funcTest();
  before(async () => {
    adminInitStub = stubObject<any>(admin, { method: "initializeApp" });
    myFunctions = await import("../src/index");
  });

  it("createSectionFolder", () => {
    let input: any;
    const wrapped = tester.wrap(myFunctions.createSectionFolder(input, context));
    wrapped(null);
  });

  after(() => {
    // adminInitStub.restore();
    tester.cleanup();
  });
});
