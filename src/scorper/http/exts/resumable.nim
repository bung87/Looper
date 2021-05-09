type ResumableKeys* = object
  chunkIndex*: string  # starts with 1
  chunkSize*: string
  currentChunkSize*: string
  totalSize*: string
  identifier*: string
  filename*: string
  relativePath*: string
  totalChunks*: string # Positive


proc newResumableKeys*(chunkIndex = "flowChunkIndex", chunkSize = "flowChunkSize",
    currentChunkSize = "flowCurrentChunkSize", totalSize = "flowTotalSize", identifier = "flowIdentifier",
    filename = "flowFilename", relativePath = "flowRelativePath", totalChunks = "flowTotalChunks"): ResumableKeys =
  result.chunkIndex = chunkIndex
  result.chunkSize = chunkSize
  result.currentChunkSize = currentChunkSize
  result.totalSize = totalSize
  result.identifier = identifier
  result.filename = filename
  result.relativePath = relativePath
  result.totalChunks = totalChunks