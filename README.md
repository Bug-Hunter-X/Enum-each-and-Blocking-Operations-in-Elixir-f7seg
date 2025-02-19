# Enum.each and Blocking Operations in Elixir

This example demonstrates a potential issue when using `Enum.each` with a function that performs a long-running or blocking operation.  If the operation within the `Enum.each` takes a significant amount of time, it can lead to unexpected behavior because Elixir's process scheduler could intervene and affect the order of processing elements.  The process might switch unexpectedly between operations before completing the previous one, potentially leaving it in an inconsistent state.

**Key takeaway:** Avoid using time consuming operations inside `Enum.each` for better performance and reliability. Use `Enum.map` and process the results outside the loop for better control and management of the operations.
