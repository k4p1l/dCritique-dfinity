import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface Review {
  'review' : string,
  'stars' : string,
  'images' : string,
}
export interface _SERVICE {
  'addReview' : ActorMethod<[string, bigint, string], undefined>,
  'getReview' : ActorMethod<[], Array<Review>>,
}
