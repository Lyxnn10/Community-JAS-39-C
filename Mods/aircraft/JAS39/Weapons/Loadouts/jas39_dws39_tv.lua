
local jas_dws39_tv_name = "jas_dws39_tv"
local jas_dws39_tv_mass = 620
local pylon_mass = 52.0

JAS_DWS_39_TV =
{
    category        = CAT_MISSILES,
    name            = jas_dws39_tv_name,
    user_name       = _("DWS 39 MJ2 TV Guided Cluster Bomb"),
    scheme          = "AGM-154AB",
    class_name      = "wAmmunitionCruise",
    model           = "bk_90",
    mass            = jas_dws39_tv_mass,
    
    wsTypeOfWeapon  = {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER},

    Escort          = 0,
    Head_Type       = 4,
    sigma           = {10, 10, 10},
    M               = jas_dws39_tv_mass,
    H_max           = 1500.0,
    H_min           = 50,
    Diam            = 330.0,
    Cx_pil          = 10,
    D_max           = 10000.0,
    D_min           = 1500.0,
    Head_Form       = 1,
    Life_Time       = 9999,
    Nr_max          = 10,
    v_min           = 10.0,
    v_mid           = 200.0,
    Mach_max        = 1.7,
    t_b             = 0.0,
    t_acc           = 0.0,
    t_marsh         = 0.0,
    Range_max       = 10000.0,
    H_min_t         = 0.0,
    Fi_start        = 3.14152,
    Fi_rak          = 3.14152,
    Fi_excort       = 3.14152,
    Fi_search       = 99.9,
    OmViz_max       = 99.9,
    X_back          = 0.0,
    Y_back          = 0.0,
    Z_back          = 0.0,
    Reflection      = 0.1,
    KillDistance    = 0.0,
    
	LaunchDistData = 
	{		
		10,		8,
		
				160,	180,	200,	220,	240,	260,	280,	300,	
		50,		500,	2200,	3000,	4800,	6800,	8800,	9600,	10000,	
		100,	1200,	2600,	4000,	5800,	7600,	9500,	9800,	10000,	
		150,	1600,	3000,	4200,	6000,	8000,	9600,	9900,	10000,	
		200,	1800,	3000,	4400,	6200,	8200,	9600,	9900,	10000,	
		250,	2000,	3200,	4600,	6200,	8200,	9600,	10000,	10000,	
		300,	2200,	3300,	4600,	6400,	8400,	9700,	10000,	10000,	
		350,	2200,	3400,	4700,	6400,	8400,	9800,	10000,	10000,	
		400,	2400,	3400,	4700,	6600,	8500,	9800,	10000,	10000,	
		450,	2400,	3400,	4700,	6600,	8500,	9900,	10000,	10000,	
		500,	2500,	3500,	4800,	6700,	8600,	9900,	10000,	10000,	
	},
        
    shape_table_data =
    {
        {
            name     = jas_dws39_tv_name,
            file     = "bk_90",
            life     = 1,
            fire     = {0, 1},
            username = _("DWS39TV"),
            index    = WSTYPE_PLACEHOLDER,
        },
    },
    
    warhead = simple_warhead(0),

    fm = {
        mass                = jas_dws39_tv_mass,  
        caliber             = 0.3,  
        cx_coeff            = {1, 0.8, 0.8, 0.15, 1.5},
        L                   = 4.5,
        I                   = 1 / 12 * jas_dws39_tv_mass * 4.5 * 4.5,
        Ma                  = 2,
        Mw                  = 7,
        wind_sigma          = 0.0,
        wind_time           = 0.0,
        Sw                  = 1.2,
        dCydA               = {0.07, 0.036},
        A                   = 0.15,
        maxAoa              = 0.4,
        finsTau             = 0.2,
        Ma_x                = 2,
        Ma_z                = 2,
        Mw_x                = 1.4,
        
        addDeplSw           = 0.6,
        no_wings_A_mlt      = 2,
        wingsDeplProcTime   = 5,
        wingsDeplDelay      = 9999,
        no_wings_cx_coeff   = {1, 0.5, 0.8, 0.10, 1.6},
    },
    
    simple_seeker = {
        sensitivity = 0,
        delay       = 0.0,
        FOV         = 0.6,
        maxW        = 500,
        opTime      = 9999,
    },
    
    control_block = {
        seeker_activation_dist       = 10000,
        default_cruise_height        = 100,
        obj_sensor                   = 0, 
        can_update_target_pos        = 0,
        turn_before_point_reach      = 1, 
        turn_hor_N                   = 2.2,
        turn_max_calc_angle_deg      = 90,
        turn_point_trigger_dist      = 100,
    },
    
    control_block2 = {
        delay                            = 0.5,
        add_y                            = 100,
        wind_k                           = 1.0,
        use_snake_maneuver               = 0, 
        max_no_vert_offset_open_h        = 90,
        vert_offset_before_end_game_k    = 0.8,
    },

    open_trigger = {
        delay                           = 0.1,
        trigger_add_time                = 0.5,
        bomblet_char_time               = 49,
        chute_bomblet_char_time         = 150,
        chute_open_time                 = 0.5,
        chute_cut_time                  = 500,
        char_time_vel_correction_coeff  = 0,
        char_time_h_correction_coeff    = 0,
        default_add_y                   = 180,
        out_w_add_y                     = 0,
        wind_correction_coeff           = 1,
        time_coeff_data                 = { 41,      1.92,    
                                            32.4,    1.78,    
                                            23.8,    1.55,    
                                            21.6,    1.3,     
                                            20.0,    1.08,    
                                            17.3,    1.0,     
                                            15,      1.2,     
                                            13,      1.2,     
                                            9.8,     0.96,    
                                            5.8,     0.85, }, 
    },
    
    autopilot = {
        delay                       = 2,
        K                           = 500,
        Ki                          = 0.00005,
        Kg                          = 10,
        nw_K                        = 22,
        nw_Ki                       = 0.0,
        nw_Kg                       = 2,
        finsLimit                   = 0.8,
        useJumpByDefault            = 0,
        J_Power_K                   = 7,
        J_Diff_K                    = 4,
        J_Int_K                     = 0.0,
        J_Angle_W                   = 0.1,
        hKp_err                     = 460,
        hKp_err_croll               = 0.012,
        hKd                         = -0.008,
        max_roll                    = 1.3,
        egm_Angle_K                 = 0.2,
        egm_FinAngle_K              = 0.3,
        egm_add_power_K             = 0.2,
        wings_depl_fins_limit_K     = 0.3,
        err_new_wlos_k              = 0.84,
        err_aoaz_k                  = 28,
        err_aoaz_sign_k             = 0.18,
    },
    
    launcher =
    {
        cluster = cluster_desc("Bomb_Other", wsType_Bomb_Cluster, 
        {
            scheme = 
            {
                dispenser = 
                {
                    op_time                 = 9000,
                    wind_sigma              = 20,
                    impulse_sigma           = 1,
                    moment_sigma            = 1,
                    mass                    = 450,
                    caliber                 = 0.45,
                    L                       = 2.5,
                    I                       = 100,
                    Ma                      = 0.228,
                    Mw                      = 2.33,
                    cx_coeff                = {1, 1, 1, 1, 2},
                    model_name              = "bk_90",
                    set_start_args          = {0,12,13},
                    spawn_args_change       = {{1,12,0},{1,1,0.6}},
                    spawn_time              = {0.02, 0.17, 0.32}, 
                    spawn_weight_loss       = {0, 150, 150},
                    spawn_args_change       = {{1,1,1},{1,12,0},{2,2,1}},
                    op_spawns               = 3,
                },

                empty_dispenser = 
                {
                    op_time                 = 50,
                    wind_sigma              = 5,
                    impulse_sigma           = 1,
                    moment_sigma            = 1,
                    mass                    = 45,
                    caliber                 = 0.45,
                    L                       = 2.5,
                    I                       = 2,
                    Ma                      = 0.03,
                    Mw                      = 0.3,
                    cx_coeff                = {1, 1, 1, 1, 2},
                    model_name              = "bk_90",
                    set_start_args          = {0, 1, 2},
                    spawn_options           = {{2, 2, 1}},
                },

                BLU_108 =
                {
                    op_time                 = 9000,
                    count                   = 12,
                    effect_count            = 12,
                    wind_sigma              = 1,
                    impulse_sigma           = 1,
                    moment_sigma            = 2,
                    mass                    = 29.5,
                    caliber                 = 0.133,
                    L                       = 0.7,
                    I                       = 0.4,
                    Ma                      = 0.90985,
                    Mw                      = 1.67549,
                    cx_coeff                = {1, 0.39, 0.38, 0.236, 1.31},
                    model_name              = "cbu97_blu108",
                    set_start_args          = {13},
                    connectors_model_name   = "cbu97_shaft",
                    explosion_impulse_coeff = 42,
                    explosion_center        = {{0.36,0,0},{-0.44,0,0}},
                    release_rnd_coeff       = 7,
                    chute_open_time         = 0.5, 
                    chute_diam              = 2,
                    chute_Cx                = 1.2,
                    chute_rnd_coeff         = 0.5,
                    spawn_options           = {{0,1,6},{0,2,6}},
        
                    submunition_engine_impulse          = 60,
                    submunition_engine_fuel_mass        = 0.1,
                    submunition_engine_work_time        = 0.22,
                    submunition_engine_rotation_moment  = 9,
                    submunition_engine_start_height     = 48,   
                    skeets_release_delay                = 1.00, 
                    skeets_in_seq_release_delay         = 0.02, 
                    main_chute_open_speed               = 4,
                    extr_chute_max_diam                 = 0.3,
                    opening_speed_k                     = 2,
                    jump_error_sum                      = 440,
                },

                BLU_108_panel =
                {
                    op_time                 = 50,
                    wind_sigma              = 5,
                    impulse_sigma           = 1,
                    moment_sigma            = 1,
                    mass                    = 5,
                    caliber                 = 0.1,
                    L                       = 1,
                    I                       = 1,
                    Ma                      = 0.5,
                    Mw                      = 1,
                    cx_coeff                = {1, 0.4, 0.4, 0.4, 1.4},
                    model_name              = "cbu97_blu108_panel",
                    init_pos                = {{0,0,0}},
                    init_impulse            = {{0,125,0}},
                    spawn_options           = {{0,1,1}},
                },

                skeet = 
                {
                    op_time                 = 9000,
                    count                   = 4, 
                    effect_count            = 4,
                    wind_sigma              = 1,
                    impulse_sigma           = 1,
                    moment_sigma            = 0.1,
                    mass                    = 5,
                    caliber                 = 0.1,
                    L                       = 1,
                    I                       = 1,
                    Ma                      = 1,
                    Mw                      = 1,
                    cx_coeff                = {1, 0.4, 0.4, 0.4, 1.4},
                    model_name              = "cbu97_skeet",
                    init_pos                = {{0.02,-0.15,0},{0.02,0.15,0},{0.25,-0.15,0},{0.25,0.15,0}},
                    omega_impulse_coeff     = 3.6,
                    release_rnd_coeff       = 12,
                    set_start_args          = 10,
                    spawn_options           = {{2,2,1},{3,3,1},{4,4,1},{5,5,1}},
        
                    shell_model_name        = "shell",
                    seeker_local_point      = {{0.05, -0.07, 0}},
                    seeker_rotation_point   = {0, 0, 0},
                    seeker_max_angle        = 0.785, 
                    seeker_max_range        = 160,  
                    seeker_activation_time  = 0.1,
                    shot_error              = 0.05, 
                    aim_lock_efficiency     = 0.85, 
                    shell_speed             = 750,  
                },
                warhead = predefined_warhead("CBU97"),
            },
            
            name            = _("MJ2"),
            type_name       = _("cluster"),
            cluster_scheme  = "AGM-154B_cluster",
        }
        )
    },
}

declare_weapon(JAS_DWS_39_TV)

declare_loadout({
    category        = CAT_MISSILES,
    CLSID           = '{JAS39_DWS39_TV}',
    attribute       = JAS_DWS_39_TV.wsTypeOfWeapon,
    Count           = 1,
    Cx_pil          = 0.0024,
    Picture         = "jas39_dws39.png",
    displayName     = JAS_DWS_39_TV.user_name,
    Weight          = JAS_DWS_39_TV.mass + pylon_mass,
    Elements        = {{ShapeName = "bk_90"}},
    ejectImpulse    = 140,
})