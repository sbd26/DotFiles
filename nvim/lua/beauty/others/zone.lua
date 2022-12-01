require('zone').setup {
    style = "epilepsy",
    after = 30,          -- Idle timeout
    -- More options to come later

    treadmill = {
        direction = "left",
        -- Opts for Treadmill style
    },
    epilepsy = {
        stage = "aura", -- "aura" or "ictal"
        -- etc.
    },
    dvd = {
        -- Opts for Dvd style
    },
    -- etc
}
