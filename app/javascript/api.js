class HttpError extends Error {
	constructor(response) {
		super(`${response.status} for ${response.url}`);
		this.name = "HttpError";
		this.response = response;
	}
}

export default {
	headers: {
		"Content-type": "application/json; charset=utf-8",
		"X-CSRF-Token": document
			.querySelector("meta[name=\"csrf-token\"]")
			.getAttribute("content")
	},

	checkResponse: function(response, expectedStatus) {
		if (response.status !== expectedStatus) {
			throw new HttpError(response);
		}
	},
};
