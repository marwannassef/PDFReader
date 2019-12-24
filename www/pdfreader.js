var exec = require(cordova/exec);

var PLUGIN_NAME = 'PDFReader';

var PDFReader = {
    showPDF: function(documentUrl) {
        exec(documentUrl, null, PLUGIN_NAME, 'showPDF', []);
    }
};

module.exports = PDFReader;