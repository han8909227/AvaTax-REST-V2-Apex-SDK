global class BatchFileModel extends ErrorResult
{
    global Long id { get; set; }

    global Long batchId { get; set; }

    global String name { get; set; }

    global String[] content { get; set; }

    global Long contentLength { get; set; }

    global String contentType { get; set; }

    global String fileExtension { get; set; }

    global String filePath { get; set; }

    global Long errorCount { get; set; }
}