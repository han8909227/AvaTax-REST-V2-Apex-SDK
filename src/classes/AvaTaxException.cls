global class AvaTaxException extends Exception
{
    global ErrorResult error { get; set; }

    global AvaTaxException(ErrorResult err)
    {
        this.error = err;
    }
}