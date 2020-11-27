

export function throwIfMissing(variable : any, message: string) {
  if (variable === null || typeof variable === "undefined") {
    throw Error(message);
  }
}