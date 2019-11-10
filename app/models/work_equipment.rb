class WorkEquipment < ApplicationRecord
  enum type: {
    work_clothe: 0,
    instrument: 1,
    auxiliary_mean: 2,
    other: 3
  }
end
