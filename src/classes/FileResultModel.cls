global class FileResultModel extends ErrorResult
{
    global Blob Data { get; set; }

    global string Filename { get; set; }

    global string ContentType { get; set; }
}