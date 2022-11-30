require('zone').setup {
    style = "dvd",
    after = 10,          -- Idle timeout
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
