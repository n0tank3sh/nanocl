use diesel::prelude::*;

use serde::{Serialize, Deserialize};
use crate::schema::volumes;



#[derive(
  Clone, Debug, Queryable, Identifiable, Insertable, Serialize, Deserialize,
)]
#[diesel(primary_key(key))]
#[diesel(table_name = volumes)]
#[serde(rename_all = "PascalCase")]
pub struct VolumeDb { 
  // Key of the Volume
  pub key: uuid::Uuid,
  pub name: String,
  pub source: String,
  pub destination: String,
  pub subpath: String,
  pub read_only: bool,
  pub nocopy: bool, 
  #[serde(skip_serializing_if = "Option::is_none")]
  pub opt: Option<serde_json::Value>,

}

