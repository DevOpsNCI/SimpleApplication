var server = require("../app");
const chai = require("chai");
const chaiHttp = require("chai-http");
const expect = chai.expect;

chai.use(chaiHttp);

describe("GET /", () => {
  it("should respond with homepage", (done) => {
    chai
      .request(server)
      .get("/")
      .end((err, res) => {
        expect(res.status).to.equal(200);
        done();
      });
  });
});
