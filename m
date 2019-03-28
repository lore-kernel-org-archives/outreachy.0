X-GM-THRID: 6673371713277788160
X-Received: by 2002:a17:906:1850:: with SMTP id w16mr1783367eje.7.1553783466844;
        Thu, 28 Mar 2019 07:31:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9107:: with SMTP id e7ls4881778eda.9.gmail; Thu, 28 Mar
 2019 07:31:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdDR6tqORmFzuVK+NGBUITREXkWDUByf/78TpkAcvLQu3Wb6yrcnRWKoJ08CMNg725w4Qv
X-Received: by 2002:a50:b104:: with SMTP id k4mr454737edd.12.1553783465965;
        Thu, 28 Mar 2019 07:31:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553783465; cv=none;
        d=google.com; s=arc-20160816;
        b=cfQHJdDlRQTkpqKOllVk4CeqwCY03ZG2s+HYlImuKSXmFAOJULSnhmh1gVh1+HA2TR
         BIXT9wvrc3q9tsdB7hnh7aoJuBYvcEuWABpZ2rEUUC37q8fks9QUYWyWQtkSV5ZoQ2to
         Xp0005G+kyIO7cfRHSJ2mhBLEoxsXxOdnpeHxCGFVwqLQzWX9wZ6K+KZnjA6xIgwRycI
         v9g5Ziy25ynkpDro1nPebnvqRCOToKwYYLrnDJEx2jlMVwfsyicn6HktPi7t73InlU+s
         KQk3BsfcWjK1OvZUeNZnZ48tosItpCGlCtuaIdNPM5suc5CBGn+oSQBp/4Sxdsd9tf2z
         f8LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YSAvDjU0EBGvFHkFtB4fD6fbXlzMMUdrZAaH7Ja0gTo=;
        b=pTHpACEyCXnjXIwsT+qynMwsO3grYgzOclczJgI0ZaPKLTRQRizaVeS6WpKqJnh4qs
         +lxfyu/Sah+lH3INBXDTvvr67SflIItXxPGse+sOnrEcHnYbjGP+uTUwnsIJI5zuilC4
         3xz8WmJQ0cwhi1p/0kPyMOeSlHKa56vf/UJaNXf6R7qj4PL+9eqBM8NQ4cKP5MM2xtEQ
         7yAFQZkGDg62u2AoLrFdL/m4hDGiI1fTeuEFEK8VhO/xBZAu2CsR5NHVW6JWt6wB6K/1
         FHyC5eb5+6qMZstuIqVyL4+V4CxQD9VJPOgtKb7zBS+BgFhkGSBeXT0RE5J5Vl0CpJwO
         KPmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a38si381340edd.0.2019.03.28.07.31.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 07:31:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,280,1549926000"; 
   d="scan'208";a="376183815"
Received: from unknown (HELO hadrien) ([195.167.213.123])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2019 15:31:05 +0100
Date: Thu, 28 Mar 2019 15:31:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: Compress two lines into one
 line
In-Reply-To: <1553765411-31204-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903281530330.2438@hadrien>
References: <1553765411-31204-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Mar 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle.
>
> This patch compress two lines into one line.
>
> Returning something from a function need not to be stored in a variable,
> can be return directly.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> diff -u -p a/rtlwifi/rtl8822be/phy.c b/rtlwifi/rtl8822be/phy.c
> --- a/rtlwifi/rtl8822be/phy.c
> +++ b/rtlwifi/rtl8822be/phy.c
> @@ -219,10 +219,8 @@ bool rtl8822be_halmac_cb_init_bb_rf_regi
>  	txpath = RF_MASK_A | RF_MASK_B;
>  	rxpath = RF_MASK_A | RF_MASK_B;
>  	tx2path = false;
> -	ret = rtlpriv->phydm.ops->phydm_trx_mode(rtlpriv, txpath, rxpath,
> +	return rtlpriv->phydm.ops->phydm_trx_mode(rtlpriv, txpath, rxpath,
>  						 tx2path);

I think you would need to add a space in front of tx2path as well.  Check
the other cases in this respect.

julia

> -
> -	return ret;
>  }
>
>  static void _rtl8822be_phy_init_tx_power_by_rate(struct ieee80211_hw *hw)
> @@ -1580,11 +1578,9 @@ _rtl8822be_phy_get_txpower_by_rate(struc
>  	else
>  		tx_num = RF_1TX;
>
> -	tx_pwr_diff = (char)(rtlphy->tx_power_by_rate_offset[band][path][tx_num]
> +	return (char)(rtlphy->tx_power_by_rate_offset[band][path][tx_num]
>  							    [rate] &
>  			     0xff);
> -
> -	return tx_pwr_diff;
>  }
>
>  u8 rtl8822be_get_txpower_index(struct ieee80211_hw *hw, u8 path, u8 rate,
> @@ -1858,8 +1854,7 @@ static long _rtl8822be_phy_txpwr_idx_to_
>  		offset = -8;
>  		break;
>  	}
> -	pwrout_dbm = txpwridx / 2 + offset;
> -	return pwrout_dbm;
> +	return txpwridx / 2 + offset;
>  }
>
>  void rtl8822be_phy_scan_operation_backup(struct ieee80211_hw *hw, u8 operation)
> @@ -2218,6 +2213,5 @@ bool rtl8822be_phy_set_rf_power_state(st
>
>  	if (rfpwr_state == ppsc->rfpwr_state)
>  		return bresult;
> -	bresult = _rtl8822be_phy_set_rf_power_state(hw, rfpwr_state);
> -	return bresult;
> +	return _rtl8822be_phy_set_rf_power_state(hw, rfpwr_state);
>  }
> diff -u -p a/rtlwifi/phydm/phydm.c b/rtlwifi/phydm/phydm.c
> --- a/rtlwifi/phydm/phydm.c
> +++ b/rtlwifi/phydm/phydm.c
> @@ -66,9 +66,7 @@ s32 odm_pwdb_conversion(s32 X, u32 total
>  		}
>  	}
>
> -	Y = 3 * (integer - decimal_bit) + decimal; /* 10*log(x)=3*log2(x), */
> -
> -	return Y;
> +	return 3 * (integer - decimal_bit) + decimal; /* 10*log(x)=3*log2(x), */
>  }
>
>  s32 odm_sign_conversion(s32 value, u32 total_bit)
> @@ -1257,9 +1255,7 @@ u32 odm_convert_to_db(u32 value)
>  			break;
>  	}
>
> -	dB = (i << 3) + j + 1;
> -
> -	return dB;
> +	return (i << 3) + j + 1;
>  }
>
>  u32 odm_convert_to_linear(u32 value)
> @@ -1275,9 +1271,7 @@ u32 odm_convert_to_linear(u32 value)
>  	i = (u8)((value - 1) >> 3);
>  	j = (u8)(value - 1) - (i << 3);
>
> -	linear = db_invert_table[i][j];
> -
> -	return linear;
> +	return db_invert_table[i][j];
>  }
>
>  /*
> diff -u -p a/rtlwifi/phydm/phydm_rainfo.c b/rtlwifi/phydm/phydm_rainfo.c
> --- a/rtlwifi/phydm/phydm_rainfo.c
> +++ b/rtlwifi/phydm/phydm_rainfo.c
> @@ -950,9 +950,7 @@ u8 phydm_rate_order_compute(void *dm_voi
>  		rate_idx -= ODM_RATEMCS8;
>  		/**/
>  	}
> -	rate_order = rate_idx;
> -
> -	return rate_order;
> +	return rate_idx;
>  }
>
>  static void phydm_ra_common_info_update(void *dm_void)
> diff -u -p a/rtlwifi/phydm/phydm_cfotracking.c b/rtlwifi/phydm/phydm_cfotracking.c
> --- a/rtlwifi/phydm/phydm_cfotracking.c
> +++ b/rtlwifi/phydm/phydm_cfotracking.c
> @@ -74,9 +74,7 @@ static u8 odm_get_default_crytaltal_cap(
>
>  	crystal_cap = rtlefuse->crystalcap;
>
> -	crystal_cap = crystal_cap & 0x3f;
> -
> -	return crystal_cap;
> +	return crystal_cap & 0x3f;
>  }
>
>  static void odm_set_atc_status(void *dm_void, bool atc_status)
> @@ -98,9 +96,8 @@ static bool odm_get_atc_status(void *dm_
>  	bool atc_status;
>  	struct phy_dm_struct *dm = (struct phy_dm_struct *)dm_void;
>
> -	atc_status = (bool)odm_get_bb_reg(dm, ODM_REG(BB_ATC, dm),
> +	return (bool)odm_get_bb_reg(dm, ODM_REG(BB_ATC, dm),
>  					  ODM_BIT(BB_ATC, dm));
> -	return atc_status;
>  }
>
>  void odm_cfo_tracking_reset(void *dm_void)
> diff -u -p a/rtlwifi/phydm/phydm_psd.c b/rtlwifi/phydm/phydm_psd.c
> --- a/rtlwifi/phydm/phydm_psd.c
> +++ b/rtlwifi/phydm/phydm_psd.c
> @@ -34,9 +34,7 @@ u32 phydm_get_psd_data(void *dm_void, u3
>  		       0); /*PSD trigger stop*/
>
>  	psd_report = odm_get_bb_reg(dm, dm_psd_table->psd_report_reg, 0xffff);
> -	psd_report = odm_convert_to_db(psd_report) + igi;
> -
> -	return psd_report;
> +	return odm_convert_to_db(psd_report) + igi;
>  }
>
>  static u8 phydm_psd_stop_trx(void *dm_void)
> diff -u -p a/rtlwifi/btcoexist/halbtcoutsrc.c b/rtlwifi/btcoexist/halbtcoutsrc.c
> --- a/rtlwifi/btcoexist/halbtcoutsrc.c
> +++ b/rtlwifi/btcoexist/halbtcoutsrc.c
> @@ -471,9 +471,7 @@ static u32 halbtc_get_wifi_link_status(s
>  	}
>  	/* TODO: P2P Connected Status */
>
> -	ret_val = (num_of_connected_port << 16) | port_connected_status;
> -
> -	return ret_val;
> +	return (num_of_connected_port << 16) | port_connected_status;
>  }
>
>  static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
> diff -u -p a/rtlwifi/efuse.c b/rtlwifi/efuse.c
> --- a/rtlwifi/efuse.c
> +++ b/rtlwifi/efuse.c
> @@ -126,8 +126,7 @@ u8 efuse_read_1byte(struct ieee80211_hw
>  				break;
>  			}
>  		}
> -		data = rtl_read_byte(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL]);
> -		return data;
> +		return rtl_read_byte(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL]);
>  	}
>  	return 0xFF;
>  }
> diff -u -p a/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c b/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
> --- a/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
> +++ b/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_sdio.c
> @@ -190,9 +190,7 @@ u8 halmac_reg_read_8_sdio_88xx(struct ha
>  		return status;
>  	}
>
> -	value8 = PLATFORM_SDIO_CMD52_READ(driver_adapter, halmac_offset);
> -
> -	return value8;
> +	return PLATFORM_SDIO_CMD52_READ(driver_adapter, halmac_offset);
>  }
>
>  /**
> diff -u -p a/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c b/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> --- a/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> +++ b/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
> @@ -205,9 +205,7 @@ u8 halmac_reg_read_8_usb_88xx(struct hal
>  	driver_adapter = halmac_adapter->driver_adapter;
>  	halmac_api = (struct halmac_api *)halmac_adapter->halmac_api;
>
> -	value8 = PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
> -
> -	return value8;
> +	return PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
>  }
>
>  /**
> diff -u -p a/rtlwifi/halmac/halmac_api.c b/rtlwifi/halmac/halmac_api.c
> --- a/rtlwifi/halmac/halmac_api.c
> +++ b/rtlwifi/halmac/halmac_api.c
> @@ -146,10 +146,8 @@ platform_reg_read_8_sdio(void *driver_ad
>  		return status;
>  	}
>
> -	value8 = halmac_platform_api->SDIO_CMD52_READ(driver_adapter,
> +	return halmac_platform_api->SDIO_CMD52_READ(driver_adapter,
>  						      halmac_offset);
> -
> -	return value8;
>  }
>
>  static enum halmac_ret_status
> diff -u -p a/rtlwifi/core.c b/rtlwifi/core.c
> --- a/rtlwifi/core.c
> +++ b/rtlwifi/core.c
> @@ -377,9 +377,7 @@ static u16 _calculate_wol_pattern_crc(u8
>  	for (i = 0; i < len; i++)
>  		crc = crc16_ccitt(pattern[i], crc);
>
> -	crc = ~crc;
> -
> -	return crc;
> +	return ~crc;
>  }
>
>  static void _rtl_add_wowlan_patterns(struct ieee80211_hw *hw,
> diff -u -p a/rtl8712/rtl871x_mp.c b/rtl8712/rtl871x_mp.c
> --- a/rtl8712/rtl871x_mp.c
> +++ b/rtl8712/rtl871x_mp.c
> @@ -704,8 +704,7 @@ static u32 GetPhyRxPktCounts(struct _ada
>  	phyrx_set |= (SelectBit & 0xF0000000);
>  	r8712_write32(pAdapter, RXERR_RPT, phyrx_set);
>  	/*Read packet count*/
> -	count = r8712_read32(pAdapter, RXERR_RPT) & RPTMaxCount;
> -	return count;
> +	return r8712_read32(pAdapter, RXERR_RPT) & RPTMaxCount;
>  }
>
>  u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
> diff -u -p a/rtl8712/rtl871x_ioctl_set.c b/rtl8712/rtl871x_ioctl_set.c
> --- a/rtl8712/rtl871x_ioctl_set.c
> +++ b/rtl8712/rtl871x_ioctl_set.c
> @@ -111,8 +111,7 @@ u8 r8712_set_802_11_bssid(struct _adapte
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>
>  	if (is_zero_ether_addr(bssid) || is_broadcast_ether_addr(bssid)) {
> -		status = false;
> -		return status;
> +		return false;
>  	}
>  	spin_lock_irqsave(&pmlmepriv->lock, irqL);
>  	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
> diff -u -p a/rtl8712/rtl871x_ioctl_linux.c b/rtl8712/rtl871x_ioctl_linux.c
> --- a/rtl8712/rtl871x_ioctl_linux.c
> +++ b/rtl8712/rtl871x_ioctl_linux.c
> @@ -316,9 +316,7 @@ static noinline_for_stack char *translat
>  	iwe.u.qual.level = rssi;  /* signal strength */
>  	iwe.u.qual.qual = 0; /* signal quality */
>  	iwe.u.qual.noise = 0; /* noise level */
> -	start = iwe_stream_add_event(info, start, stop, &iwe, IW_EV_QUAL_LEN);
> -	/* how to translate rssi to ?% */
> -	return start;
> +	return iwe_stream_add_event(info, start, stop, &iwe, IW_EV_QUAL_LEN);
>  }
>
>  static int wpa_set_auth_algs(struct net_device *dev, u32 value)
> diff -u -p a/rtl8712/rtl871x_mp_ioctl.c b/rtl8712/rtl871x_mp_ioctl.c
> --- a/rtl8712/rtl871x_mp_ioctl.c
> +++ b/rtl8712/rtl871x_mp_ioctl.c
> @@ -371,8 +371,7 @@ uint oid_rt_pro_query_tx_packet_sent_hdl
>  				   (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID) {
> -		status = RNDIS_STATUS_NOT_ACCEPTED;
> -		return status;
> +		return RNDIS_STATUS_NOT_ACCEPTED;
>  	}
>  	if (poid_par_priv->information_buf_len == sizeof(u32)) {
>  		*(u32 *)poid_par_priv->information_buf =
> @@ -392,8 +391,7 @@ uint oid_rt_pro_query_rx_packet_received
>  				   (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID) {
> -		status = RNDIS_STATUS_NOT_ACCEPTED;
> -		return status;
> +		return RNDIS_STATUS_NOT_ACCEPTED;
>  	}
>  	if (poid_par_priv->information_buf_len == sizeof(u32)) {
>  		*(u32 *)poid_par_priv->information_buf =
> @@ -413,8 +411,7 @@ uint oid_rt_pro_query_rx_packet_crc32_er
>  				   (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID) {
> -		status = RNDIS_STATUS_NOT_ACCEPTED;
> -		return status;
> +		return RNDIS_STATUS_NOT_ACCEPTED;
>  	}
>  	if (poid_par_priv->information_buf_len == sizeof(u32)) {
>  		*(u32 *)poid_par_priv->information_buf =
> diff -u -p a/vc04_services/bcm2835-camera/bcm2835-camera.c b/vc04_services/bcm2835-camera/bcm2835-camera.c
> --- a/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -1511,10 +1511,9 @@ static int set_camera_parameters(struct
>  		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
>  	};
>
> -	ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
> +	return vchiq_mmal_port_parameter_set(instance, &camera->control,
>  					    MMAL_PARAMETER_CAMERA_CONFIG,
>  					    &cam_config, sizeof(cam_config));
> -	return ret;
>  }
>
>  #define MAX_SUPPORTED_ENCODINGS 20
> diff -u -p a/vc04_services/bcm2835-camera/controls.c b/vc04_services/bcm2835-camera/controls.c
> --- a/vc04_services/bcm2835-camera/controls.c
> +++ b/vc04_services/bcm2835-camera/controls.c
> @@ -270,11 +270,9 @@ static int ctrl_set_rotate(struct bm2835
>  	if (ret < 0)
>  		return ret;
>
> -	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
> +	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
>  					    mmal_ctrl->mmal_id,
>  					    &u32_value, sizeof(u32_value));
> -
> -	return ret;
>  }
>
>  static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
> @@ -313,11 +311,9 @@ static int ctrl_set_flip(struct bm2835_m
>  	if (ret < 0)
>  		return ret;
>
> -	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
> +	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
>  					    mmal_ctrl->mmal_id,
>  					    &u32_value, sizeof(u32_value));
> -
> -	return ret;
>  }
>
>  static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
> @@ -617,8 +613,7 @@ static int ctrl_set_bitrate(struct bm283
>  	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
>  					    mmal_ctrl->mmal_id,
>  					    &ctrl->val, sizeof(ctrl->val));
> -	ret = 0;
> -	return ret;
> +	return 0;
>  }
>
>  static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
> diff -u -p a/rtl8192u/r819xU_firmware.c b/rtl8192u/r819xU_firmware.c
> --- a/rtl8192u/r819xU_firmware.c
> +++ b/rtl8192u/r819xU_firmware.c
> @@ -166,8 +166,7 @@ static bool CPUcheck_maincodeok_turnonCP
>
>  CPUCheckMainCodeOKAndTurnOnCPU_Fail:
>  	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
> -	rt_status = false;
> -	return rt_status;
> +	return false;
>  }
>
>  static bool CPUcheck_firmware_ready(struct net_device *dev)
> @@ -195,8 +194,7 @@ static bool CPUcheck_firmware_ready(stru
>
>  CPUCheckFirmwareReady_Fail:
>  	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
> -	rt_status = false;
> -	return rt_status;
> +	return false;
>
>  }
>
> @@ -336,8 +334,7 @@ bool init_firmware(struct net_device *de
>
>  download_firmware_fail:
>  	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
> -	rt_status = false;
> -	return rt_status;
> +	return false;
>
>  }
>
> diff -u -p a/rtl8192u/r819xU_phy.c b/rtl8192u/r819xU_phy.c
> --- a/rtl8192u/r819xU_phy.c
> +++ b/rtl8192u/r819xU_phy.c
> @@ -340,8 +340,7 @@ u32 rtl8192_phy_QueryRFReg(struct net_de
>  		reg = rtl8192_phy_RFSerialRead(dev, e_rfpath, reg_addr);
>  	}
>  	bitshift =  ffs(bitmask) - 1;
> -	reg = (reg & bitmask) >> bitshift;
> -	return reg;
> +	return (reg & bitmask) >> bitshift;
>
>  }
>
> diff -u -p a/media/imx/imx6-mipi-csi2.c b/media/imx/imx6-mipi-csi2.c
> --- a/media/imx/imx6-mipi-csi2.c
> +++ b/media/imx/imx6-mipi-csi2.c
> @@ -603,22 +603,19 @@ static int csi2_probe(struct platform_de
>  	csi2->pllref_clk = devm_clk_get(&pdev->dev, "ref");
>  	if (IS_ERR(csi2->pllref_clk)) {
>  		v4l2_err(&csi2->sd, "failed to get pll reference clock\n");
> -		ret = PTR_ERR(csi2->pllref_clk);
> -		return ret;
> +		return PTR_ERR(csi2->pllref_clk);
>  	}
>
>  	csi2->dphy_clk = devm_clk_get(&pdev->dev, "dphy");
>  	if (IS_ERR(csi2->dphy_clk)) {
>  		v4l2_err(&csi2->sd, "failed to get dphy clock\n");
> -		ret = PTR_ERR(csi2->dphy_clk);
> -		return ret;
> +		return PTR_ERR(csi2->dphy_clk);
>  	}
>
>  	csi2->pix_clk = devm_clk_get(&pdev->dev, "pix");
>  	if (IS_ERR(csi2->pix_clk)) {
>  		v4l2_err(&csi2->sd, "failed to get pixel clock\n");
> -		ret = PTR_ERR(csi2->pix_clk);
> -		return ret;
> +		return PTR_ERR(csi2->pix_clk);
>  	}
>
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> diff -u -p a/media/ipu3/ipu3-mmu.c b/media/ipu3/ipu3-mmu.c
> --- a/media/ipu3/ipu3-mmu.c
> +++ b/media/ipu3/ipu3-mmu.c
> @@ -270,9 +270,7 @@ static size_t imgu_mmu_pgsize(unsigned l
>
>  	/* pick the biggest page */
>  	pgsize_idx = __fls(pgsize);
> -	pgsize = 1UL << pgsize_idx;
> -
> -	return pgsize;
> +	return 1UL << pgsize_idx;
>  }
>
>  /* drivers/iommu/iommu.c/iommu_map() */
> diff -u -p a/media/ipu3/ipu3-css-fw.c b/media/ipu3/ipu3-css-fw.c
> --- a/media/ipu3/ipu3-css-fw.c
> +++ b/media/ipu3/ipu3-css-fw.c
> @@ -63,10 +63,9 @@ unsigned int imgu_css_fw_obgrid_size(con
>  	unsigned int obgrid_size;
>
>  	width = ALIGN(width, IPU3_UAPI_ISP_VEC_ELEMS / 4);
> -	obgrid_size = PAGE_ALIGN(width * height *
> +	return PAGE_ALIGN(width * height *
>  				 sizeof(struct ipu3_uapi_obgrid_param)) *
>  				 bi->info.isp.sp.iterator.num_stripes;
> -	return obgrid_size;
>  }
>
>  void *imgu_css_fw_pipeline_params(struct imgu_css *css, unsigned int pipe,
> diff -u -p a/media/zoran/zoran_card.c b/media/zoran/zoran_card.c
> --- a/media/zoran/zoran_card.c
> +++ b/media/zoran/zoran_card.c
> @@ -156,8 +156,7 @@ zr36060_read (struct videocodec *codec,
>  		return -1;
>  	}
>
> -	data = post_office_read(zr, 0, 3) & 0xff;
> -	return data;
> +	return post_office_read(zr, 0, 3) & 0xff;
>  }
>
>  static void
> @@ -189,8 +188,7 @@ zr36050_read (struct videocodec *codec,
>  		return -1;
>  	}
>
> -	data = post_office_read(zr, 0, reg & 0x03) & 0xff;	// reg. LOWBYTES + read
> -	return data;
> +	return post_office_read(zr, 0, reg & 0x03) & 0xff;	// reg. LOWBYTES + read
>  }
>
>  static void
> @@ -220,8 +218,7 @@ zr36016_read (struct videocodec *codec,
>  		return -1;
>  	}
>
> -	data = post_office_read(zr, 2, reg & 0x03) & 0xff;	// read
> -	return data;
> +	return post_office_read(zr, 2, reg & 0x03) & 0xff;	// read
>  }
>
>  /* hack for in zoran_device.c */
> diff -u -p a/media/zoran/zoran_driver.c b/media/zoran/zoran_driver.c
> --- a/media/zoran/zoran_driver.c
> +++ b/media/zoran/zoran_driver.c
> @@ -1747,11 +1747,10 @@ static int zoran_s_fmt_vid_overlay(struc
>  			fmt->fmt.win.w.height,
>  			fmt->fmt.win.clipcount,
>  			fmt->fmt.win.bitmap);
> -	res = setup_window(fh, fmt->fmt.win.w.left, fmt->fmt.win.w.top,
> +	return setup_window(fh, fmt->fmt.win.w.left, fmt->fmt.win.w.top,
>  			   fmt->fmt.win.w.width, fmt->fmt.win.w.height,
>  			   (struct v4l2_clip __user *)fmt->fmt.win.clips,
>  			   fmt->fmt.win.clipcount, fmt->fmt.win.bitmap);
> -	return res;
>  }
>
>  static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
> @@ -1773,8 +1772,7 @@ static int zoran_s_fmt_vid_out(struct fi
>  	if (fh->buffers.allocated) {
>  		dprintk(1, KERN_ERR "%s: VIDIOC_S_FMT - cannot change capture mode\n",
>  			ZR_DEVNAME(zr));
> -		res = -EBUSY;
> -		return res;
> +		return -EBUSY;
>  	}
>
>  	settings = fh->jpg_settings;
> @@ -1859,8 +1857,7 @@ static int zoran_s_fmt_vid_cap(struct fi
>  	    fh->buffers.active != ZORAN_FREE) {
>  		dprintk(1, KERN_ERR "%s: VIDIOC_S_FMT - cannot change capture mode\n",
>  				ZR_DEVNAME(zr));
> -		res = -EBUSY;
> -		return res;
> +		return -EBUSY;
>  	}
>  	if (fmt->fmt.pix.height > BUZ_MAX_HEIGHT)
>  		fmt->fmt.pix.height = BUZ_MAX_HEIGHT;
> @@ -1923,10 +1920,8 @@ static int zoran_s_fbuf(struct file *fil
>  		return -EINVAL;
>  	}
>
> -	res = setup_fbuffer(fh, fb->base, &zoran_formats[i], fb->fmt.width,
> +	return setup_fbuffer(fh, fb->base, &zoran_formats[i], fb->fmt.width,
>  			    fb->fmt.height, fb->fmt.bytesperline);
> -
> -	return res;
>  }
>
>  static int zoran_overlay(struct file *file, void *__fh, unsigned int on)
> @@ -1934,9 +1929,7 @@ static int zoran_overlay(struct file *fi
>  	struct zoran_fh *fh = __fh;
>  	int res;
>
> -	res = setup_overlay(fh, on);
> -
> -	return res;
> +	return setup_overlay(fh, on);
>  }
>
>  static int zoran_streamoff(struct file *file, void *__fh, enum v4l2_buf_type type);
> @@ -1963,8 +1956,7 @@ static int zoran_reqbufs(struct file *fi
>  				KERN_ERR
>  				"%s: VIDIOC_REQBUFS - buffers already allocated\n",
>  				ZR_DEVNAME(zr));
> -		res = -EBUSY;
> -		return res;
> +		return -EBUSY;
>  	}
>
>  	if (fh->map_mode == ZORAN_MAP_MODE_RAW &&
> @@ -1980,8 +1972,7 @@ static int zoran_reqbufs(struct file *fi
>  		fh->buffers.num_buffers = req->count;
>
>  		if (v4l_fbuffer_alloc(fh)) {
> -			res = -ENOMEM;
> -			return res;
> +			return -ENOMEM;
>  		}
>  	} else if (fh->map_mode == ZORAN_MAP_MODE_JPG_REC ||
>  		   fh->map_mode == ZORAN_MAP_MODE_JPG_PLAY) {
> @@ -1997,16 +1988,14 @@ static int zoran_reqbufs(struct file *fi
>  		fh->buffers.buffer_size = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
>
>  		if (jpg_fbuffer_alloc(fh)) {
> -			res = -ENOMEM;
> -			return res;
> +			return -ENOMEM;
>  		}
>  	} else {
>  		dprintk(1,
>  				KERN_ERR
>  				"%s: VIDIOC_REQBUFS - unknown type %d\n",
>  				ZR_DEVNAME(zr), req->type);
> -		res = -EINVAL;
> -		return res;
> +		return -EINVAL;
>  	}
>  	return res;
>  }
> @@ -2016,9 +2005,7 @@ static int zoran_querybuf(struct file *f
>  	struct zoran_fh *fh = __fh;
>  	int res;
>
> -	res = zoran_v4l2_buffer_status(fh, buf, buf->index);
> -
> -	return res;
> +	return zoran_v4l2_buffer_status(fh, buf, buf->index);
>  }
>
>  static int zoran_qbuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
> @@ -2033,8 +2020,7 @@ static int zoran_qbuf(struct file *file,
>  			dprintk(1, KERN_ERR
>  				"%s: VIDIOC_QBUF - invalid buf->type=%d for map_mode=%d\n",
>  				ZR_DEVNAME(zr), buf->type, fh->map_mode);
> -			res = -EINVAL;
> -			return res;
> +			return -EINVAL;
>  		}
>
>  		res = zoran_v4l_queue_frame(fh, buf->index);
> @@ -2058,8 +2044,7 @@ static int zoran_qbuf(struct file *file,
>  			dprintk(1, KERN_ERR
>  				"%s: VIDIOC_QBUF - invalid buf->type=%d for map_mode=%d\n",
>  				ZR_DEVNAME(zr), buf->type, fh->map_mode);
> -			res = -EINVAL;
> -			return res;
> +			return -EINVAL;
>  		}
>
>  		res = zoran_jpg_queue_frame(fh, buf->index, codec_mode);
> @@ -2093,15 +2078,13 @@ static int zoran_dqbuf(struct file *file
>  			dprintk(1, KERN_ERR
>  				"%s: VIDIOC_QBUF - invalid buf->type=%d for map_mode=%d\n",
>  				ZR_DEVNAME(zr), buf->type, fh->map_mode);
> -			res = -EINVAL;
> -			return res;
> +			return -EINVAL;
>  		}
>
>  		num = zr->v4l_pend[zr->v4l_sync_tail & V4L_MASK_FRAME];
>  		if (file->f_flags & O_NONBLOCK &&
>  		    zr->v4l_buffers.buffer[num].state != BUZ_STATE_DONE) {
> -			res = -EAGAIN;
> -			return res;
> +			return -EAGAIN;
>  		}
>  		res = v4l_sync(fh, num);
>  		if (res)
> @@ -2124,16 +2107,14 @@ static int zoran_dqbuf(struct file *file
>  			dprintk(1, KERN_ERR
>  				"%s: VIDIOC_QBUF - invalid buf->type=%d for map_mode=%d\n",
>  				ZR_DEVNAME(zr), buf->type, fh->map_mode);
> -			res = -EINVAL;
> -			return res;
> +			return -EINVAL;
>  		}
>
>  		num = zr->jpg_pend[zr->jpg_que_tail & BUZ_MASK_FRAME];
>
>  		if (file->f_flags & O_NONBLOCK &&
>  		    zr->jpg_buffers.buffer[num].state != BUZ_STATE_DONE) {
> -			res = -EAGAIN;
> -			return res;
> +			return -EAGAIN;
>  		}
>  		bs.frame = 0; /* suppress compiler warning */
>  		res = jpg_sync(fh, &bs);
> @@ -2163,8 +2144,7 @@ static int zoran_streamon(struct file *f
>  	case ZORAN_MAP_MODE_RAW:	/* raw capture */
>  		if (zr->v4l_buffers.active != ZORAN_ACTIVE ||
>  		    fh->buffers.active != ZORAN_ACTIVE) {
> -			res = -EBUSY;
> -			return res;
> +			return -EBUSY;
>  		}
>
>  		zr->v4l_buffers.active = fh->buffers.active = ZORAN_LOCKED;
> @@ -2182,8 +2162,7 @@ static int zoran_streamon(struct file *f
>  		/* what is the codec mode right now? */
>  		if (zr->jpg_buffers.active != ZORAN_ACTIVE ||
>  		    fh->buffers.active != ZORAN_ACTIVE) {
> -			res = -EBUSY;
> -			return res;
> +			return -EBUSY;
>  		}
>
>  		zr->jpg_buffers.active = fh->buffers.active = ZORAN_LOCKED;
> @@ -2216,8 +2195,7 @@ static int zoran_streamoff(struct file *
>  	case ZORAN_MAP_MODE_RAW:	/* raw capture */
>  		if (fh->buffers.active == ZORAN_FREE &&
>  		    zr->v4l_buffers.active != ZORAN_FREE) {
> -			res = -EPERM;	/* stay off other's settings! */
> -			return res;
> +			return -EPERM;	/* stay off other's settings! */
>  		}
>  		if (zr->v4l_buffers.active == ZORAN_FREE)
>  			return res;
> @@ -2247,8 +2225,7 @@ static int zoran_streamoff(struct file *
>  	case ZORAN_MAP_MODE_JPG_PLAY:
>  		if (fh->buffers.active == ZORAN_FREE &&
>  		    zr->jpg_buffers.active != ZORAN_FREE) {
> -			res = -EPERM;	/* stay off other's settings! */
> -			return res;
> +			return -EPERM;	/* stay off other's settings! */
>  		}
>  		if (zr->jpg_buffers.active == ZORAN_FREE)
>  			return res;
> @@ -2288,8 +2265,7 @@ static int zoran_s_std(struct file *file
>  	if (res)
>  		return res;
>
> -	res = wait_grab_pending(zr);
> -	return res;
> +	return wait_grab_pending(zr);
>  }
>
>  static int zoran_enum_input(struct file *file, void *__fh,
> @@ -2332,8 +2308,7 @@ static int zoran_s_input(struct file *fi
>  		return res;
>
>  	/* Make sure the changes come into effect */
> -	res = wait_grab_pending(zr);
> -	return res;
> +	return wait_grab_pending(zr);
>  }
>
>  static int zoran_enum_output(struct file *file, void *__fh,
> @@ -2488,8 +2463,7 @@ static int zoran_s_jpegcomp(struct file
>  		dprintk(1, KERN_WARNING
>  			"%s: VIDIOC_S_JPEGCOMP called while in playback/capture mode\n",
>  			ZR_DEVNAME(zr));
> -		res = -EBUSY;
> -		return res;
> +		return -EBUSY;
>  	}
>
>  	res = zoran_check_jpg_settings(zr, &settings, 0);
> @@ -2683,8 +2657,7 @@ zoran_mmap (struct file           *file,
>  			KERN_ERR
>  			"%s: %s(%s) - buffers not yet allocated\n",
>  			ZR_DEVNAME(zr), __func__, mode_name(fh->map_mode));
> -		res = -ENOMEM;
> -		return res;
> +		return -ENOMEM;
>  	}
>
>  	first = offset / fh->buffers.buffer_size;
> @@ -2699,8 +2672,7 @@ zoran_mmap (struct file           *file,
>  			ZR_DEVNAME(zr), __func__, mode_name(fh->map_mode), offset, size,
>  			fh->buffers.buffer_size,
>  			fh->buffers.num_buffers);
> -		res = -EINVAL;
> -		return res;
> +		return -EINVAL;
>  	}
>
>  	/* Check if any buffers are already mapped */
> @@ -2710,16 +2682,14 @@ zoran_mmap (struct file           *file,
>  				KERN_ERR
>  				"%s: %s(%s) - buffer %d already mapped\n",
>  				ZR_DEVNAME(zr), __func__, mode_name(fh->map_mode), i);
> -			res = -EBUSY;
> -			return res;
> +			return -EBUSY;
>  		}
>  	}
>
>  	/* map these buffers */
>  	map = kmalloc(sizeof(struct zoran_mapping), GFP_KERNEL);
>  	if (!map) {
> -		res = -ENOMEM;
> -		return res;
> +		return -ENOMEM;
>  	}
>  	map->fh = fh;
>  	atomic_set(&map->count, 1);
> @@ -2740,8 +2710,7 @@ zoran_mmap (struct file           *file,
>  					KERN_ERR
>  					"%s: %s(V4L) - remap_pfn_range failed\n",
>  					ZR_DEVNAME(zr), __func__);
> -				res = -EAGAIN;
> -				return res;
> +				return -EAGAIN;
>  			}
>  			size -= todo;
>  			start += todo;
> @@ -2772,8 +2741,7 @@ zoran_mmap (struct file           *file,
>  						KERN_ERR
>  						"%s: %s(V4L) - remap_pfn_range failed\n",
>  						ZR_DEVNAME(zr), __func__);
> -					res = -EAGAIN;
> -					return res;
> +					return -EAGAIN;
>  				}
>  				size -= todo;
>  				start += todo;
> diff -u -p a/octeon-usb/octeon-hcd.c b/octeon-usb/octeon-hcd.c
> --- a/octeon-usb/octeon-hcd.c
> +++ b/octeon-usb/octeon-hcd.c
> @@ -2389,9 +2389,7 @@ static int cvmx_usb_get_frame_number(str
>  	union cvmx_usbcx_hfnum usbc_hfnum;
>
>  	usbc_hfnum.u32 = cvmx_usb_read_csr32(usb, CVMX_USBCX_HFNUM(usb->index));
> -	frame_number = usbc_hfnum.s.frnum;
> -
> -	return frame_number;
> +	return usbc_hfnum.s.frnum;
>  }
>
>  static void cvmx_usb_transfer_control(struct octeon_hcd *usb,
> diff -u -p a/gasket/apex_driver.c b/gasket/apex_driver.c
> --- a/gasket/apex_driver.c
> +++ b/gasket/apex_driver.c
> @@ -439,9 +439,7 @@ static int apex_reset(struct gasket_dev
>  		if (ret)
>  			return ret;
>  	}
> -	ret = apex_quit_reset(gasket_dev);
> -
> -	return ret;
> +	return apex_quit_reset(gasket_dev);
>  }
>
>  /*
> diff -u -p a/fsl-dpaa2/ethsw/ethsw.c b/fsl-dpaa2/ethsw/ethsw.c
> --- a/fsl-dpaa2/ethsw/ethsw.c
> +++ b/fsl-dpaa2/ethsw/ethsw.c
> @@ -1350,9 +1350,7 @@ static int ethsw_port_init(struct ethsw_
>  		return err;
>  	}
>
> -	err = ethsw_port_fdb_add_mc(port_priv, def_mcast);
> -
> -	return err;
> +	return ethsw_port_fdb_add_mc(port_priv, def_mcast);
>  }
>
>  static void ethsw_unregister_notifier(struct device *dev)
> diff -u -p a/wilc1000/host_interface.c b/wilc1000/host_interface.c
> --- a/wilc1000/host_interface.c
> +++ b/wilc1000/host_interface.c
> @@ -1365,10 +1365,8 @@ int wilc_set_pmkid_info(struct wilc_vif
>  	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>  	wid.val = (u8 *)pmkid;
>
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
>  				      wilc_get_vif_idx(vif));
> -
> -	return result;
>  }
>
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> @@ -1403,8 +1401,7 @@ int wilc_set_join_req(struct wilc_vif *v
>  		conn_info->req_ies_len = ies_len;
>  		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
>  		if (!conn_info->req_ies) {
> -			result = -ENOMEM;
> -			return result;
> +			return -ENOMEM;
>  		}
>  	}
>
> @@ -1601,10 +1598,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vi
>  		i++;
>  	}
>
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
>  				      i, wilc_get_vif_idx(vif));
> -
> -	return result;
>  }
>
>  static void get_periodic_rssi(struct timer_list *t)
> @@ -2129,10 +2124,8 @@ int wilc_set_tx_power(struct wilc_vif *v
>  	wid.val = &tx_power;
>  	wid.size = sizeof(char);
>
> -	ret = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
>  				   wilc_get_vif_idx(vif));
> -
> -	return ret;
>  }
>
>  int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
> @@ -2145,8 +2138,6 @@ int wilc_get_tx_power(struct wilc_vif *v
>  	wid.val = tx_power;
>  	wid.size = sizeof(char);
>
> -	ret = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
>  				   wilc_get_vif_idx(vif));
> -
> -	return ret;
>  }
> diff -u -p a/wilc1000/wilc_spi.c b/wilc1000/wilc_spi.c
> --- a/wilc1000/wilc_spi.c
> +++ b/wilc1000/wilc_spi.c
> @@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc
>  	int k = IRG_FLAGS_OFFSET + 5;
>
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
> +		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
>  					int_status);
> -		return ret;
>  	}
>  	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
>  	if (!ret) {
> @@ -982,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct
>  	u32 tbl_ctl;
>
>  	if (spi_priv->has_thrpt_enh) {
> -		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
> +		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
>  					 val);
> -		return ret;
>  	}
>
>  	flags = val & (BIT(MAX_NUM_INT) - 1);
> diff -u -p a/octeon/ethernet-tx.c b/octeon/ethernet-tx.c
> --- a/octeon/ethernet-tx.c
> +++ b/octeon/ethernet-tx.c
> @@ -64,9 +64,8 @@ static inline int cvm_oct_adjust_skb_to_
>  						   MAX_SKB_TO_FREE;
>  	if (undo > 0)
>  		cvmx_fau_atomic_add32(fau, -undo);
> -	skb_to_free = -skb_to_free > MAX_SKB_TO_FREE ? MAX_SKB_TO_FREE :
> +	return -skb_to_free > MAX_SKB_TO_FREE ? MAX_SKB_TO_FREE :
>  						       -skb_to_free;
> -	return skb_to_free;
>  }
>
>  static void cvm_oct_kick_tx_poll_watchdog(void)
> diff -u -p a/mt7621-eth/mdio_mt7620.c b/mt7621-eth/mdio_mt7620.c
> --- a/mt7621-eth/mdio_mt7620.c
> +++ b/mt7621-eth/mdio_mt7620.c
> @@ -72,9 +72,7 @@ u32 _mt7620_mii_read(struct mt7620_gsw *
>  	if (mt7620_mii_busy_wait(gsw))
>  		return 0xffff;
>
> -	d = mtk_switch_r32(gsw, MT7620_GSW_REG_PIAC) & 0xffff;
> -
> -	return d;
> +	return mtk_switch_r32(gsw, MT7620_GSW_REG_PIAC) & 0xffff;
>  }
>  EXPORT_SYMBOL_GPL(_mt7620_mii_read);
>
> diff -u -p a/rtl8188eu/hal/usb_halinit.c b/rtl8188eu/hal/usb_halinit.c
> --- a/rtl8188eu/hal/usb_halinit.c
> +++ b/rtl8188eu/hal/usb_halinit.c
> @@ -52,9 +52,7 @@ static bool HalUsbSetQueuePipeMapping818
>
>  	/*  All config other than above support one Bulk IN and one Interrupt IN. */
>
> -	result = hal_mapping_out_pipe(adapt, NumOutPipe);
> -
> -	return result;
> +	return hal_mapping_out_pipe(adapt, NumOutPipe);
>  }
>
>  void rtw_hal_chip_configure(struct adapter *adapt)
> diff -u -p a/rtl8188eu/core/rtw_mlme.c b/rtl8188eu/core/rtw_mlme.c
> --- a/rtl8188eu/core/rtw_mlme.c
> +++ b/rtl8188eu/core/rtw_mlme.c
> @@ -1632,8 +1632,7 @@ int rtw_set_key(struct adapter *adapter,
>  	pcmd->rsp = NULL;
>  	pcmd->rspsz = 0;
>  	INIT_LIST_HEAD(&pcmd->list);
> -	res = rtw_enqueue_cmd(pcmdpriv, pcmd);
> -	return res;
> +	return rtw_enqueue_cmd(pcmdpriv, pcmd);
>
>  err_free_parm:
>  	kfree(psetkeyparm);
> diff -u -p a/rtl8188eu/core/rtw_wlan_util.c b/rtl8188eu/core/rtw_wlan_util.c
> --- a/rtl8188eu/core/rtw_wlan_util.c
> +++ b/rtl8188eu/core/rtw_wlan_util.c
> @@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(struct ieee
>  {
>  	unsigned int mask = 0;
>
> -	mask = (pHT_caps->mcs.rx_mask[0] << 12) |
> +	return (pHT_caps->mcs.rx_mask[0] << 12) |
>  	       (pHT_caps->mcs.rx_mask[1] << 20);
> -
> -	return mask;
>  }
>
>  int support_short_GI(struct adapter *padapter, struct ieee80211_ht_cap *pHT_caps)
> diff -u -p a/rtl8188eu/core/rtw_recv.c b/rtl8188eu/core/rtw_recv.c
> --- a/rtl8188eu/core/rtw_recv.c
> +++ b/rtl8188eu/core/rtw_recv.c
> @@ -1857,8 +1857,7 @@ static int process_recv_indicatepkts(str
>  			/*  including perform A-MPDU Rx Ordering Buffer Control */
>  			if ((!padapter->bDriverStopped) &&
>  			    (!padapter->bSurpriseRemoved)) {
> -				retval = _FAIL;
> -				return retval;
> +				return _FAIL;
>  			}
>  		}
>  	} else { /* B/G mode */
> @@ -1877,8 +1876,7 @@ static int process_recv_indicatepkts(str
>  			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ %s- recv_func free_indicatepkt\n", __func__));
>
>  			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
> -			retval = _FAIL;
> -			return retval;
> +			return _FAIL;
>  		}
>  	}
>
> diff -u -p a/rtl8188eu/os_dep/ioctl_linux.c b/rtl8188eu/os_dep/ioctl_linux.c
> --- a/rtl8188eu/os_dep/ioctl_linux.c
> +++ b/rtl8188eu/os_dep/ioctl_linux.c
> @@ -308,8 +308,7 @@ static char *translate_scan(struct adapt
>  	iwe.u.qual.level = (u8)ss;
>  	iwe.u.qual.qual = (u8)sq;   /*  signal quality */
>  	iwe.u.qual.noise = 0; /*  noise level */
> -	start = iwe_stream_add_event(info, start, stop, &iwe, IW_EV_QUAL_LEN);
> -	return start;
> +	return iwe_stream_add_event(info, start, stop, &iwe, IW_EV_QUAL_LEN);
>  }
>
>  static int wpa_set_auth_algs(struct net_device *dev, u32 value)
> diff -u -p a/speakup/i18n.c b/speakup/i18n.c
> --- a/speakup/i18n.c
> +++ b/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *in
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);
>  }
>
>  /*
> diff -u -p a/sm750fb/ddk750_sii164.c b/sm750fb/ddk750_sii164.c
> --- a/sm750fb/ddk750_sii164.c
> +++ b/sm750fb/ddk750_sii164.c
> @@ -39,10 +39,8 @@ unsigned short sii164GetVendorID(void)
>  {
>  	unsigned short vendorID;
>
> -	vendorID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_HIGH) << 8) |
> +	return ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_HIGH) << 8) |
>  		    (unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_LOW);
> -
> -	return vendorID;
>  }
>
>  /*
> @@ -56,10 +54,8 @@ unsigned short sii164GetDeviceID(void)
>  {
>  	unsigned short deviceID;
>
> -	deviceID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_HIGH) << 8) |
> +	return ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_HIGH) << 8) |
>  		    (unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_LOW);
> -
> -	return deviceID;
>  }
>
>  /* DVI.C will handle all SiI164 chip stuffs and try it best to make code minimal and useful */
> diff -u -p a/sm750fb/ddk750_chip.c b/sm750fb/ddk750_chip.c
> --- a/sm750fb/ddk750_chip.c
> +++ b/sm750fb/ddk750_chip.c
> @@ -399,13 +399,11 @@ unsigned int sm750_format_pll_reg(struct
>  	 * register. On returning a 32 bit number, the value can be
>  	 * applied to any PLL in the calling function.
>  	 */
> -	reg = PLL_CTRL_POWER |
> +	return PLL_CTRL_POWER |
>  #ifndef VALIDATION_CHIP
>  		((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |
>  #endif
>  		((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
>  		((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
>  		((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
> -
> -	return reg;
>  }
> diff -u -p a/pi433/rf69.c b/pi433/rf69.c
> --- a/pi433/rf69.c
> +++ b/pi433/rf69.c
> @@ -624,9 +624,7 @@ int rf69_set_preamble_length(struct spi_
>  	retval = rf69_write_reg(spi, REG_PREAMBLE_MSB, msb);
>  	if (retval)
>  		return retval;
> -	retval = rf69_write_reg(spi, REG_PREAMBLE_LSB, lsb);
> -
> -	return retval;
> +	return rf69_write_reg(spi, REG_PREAMBLE_LSB, lsb);
>  }
>
>  int rf69_enable_sync(struct spi_device *spi)
> diff -u -p a/mt7621-mmc/sd.c b/mt7621-mmc/sd.c
> --- a/mt7621-mmc/sd.c
> +++ b/mt7621-mmc/sd.c
> @@ -763,8 +763,7 @@ static int msdc_app_cmd(struct mmc_host
>  	mrq.cmd = &cmd; cmd.mrq = &mrq;
>  	cmd.data = NULL;
>
> -	err = msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
> -	return err;
> +	return msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
>  }
>
>  static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd)
> diff -u -p a/rtl8723bs/hal/rtl8723b_rf6052.c b/rtl8723bs/hal/rtl8723b_rf6052.c
> --- a/rtl8723bs/hal/rtl8723b_rf6052.c
> +++ b/rtl8723bs/hal/rtl8723b_rf6052.c
> @@ -208,8 +208,7 @@ int PHY_RF6052_Config8723B(struct adapte
>  	/*  */
>  	/*  Config BB and RF */
>  	/*  */
> -	rtStatus = phy_RF6052_Config_ParaFile(Adapter);
> -	return rtStatus;
> +	return phy_RF6052_Config_ParaFile(Adapter);
>
>  }
>
> diff -u -p a/rtl8723bs/hal/hal_btcoex.c b/rtl8723bs/hal/hal_btcoex.c
> --- a/rtl8723bs/hal/hal_btcoex.c
> +++ b/rtl8723bs/hal/hal_btcoex.c
> @@ -351,9 +351,7 @@ static u32 halbtcoutsrc_GetWifiLinkStatu
>  		numOfConnectedPort++;
>  	}
>
> -	retVal = (numOfConnectedPort << 16) | portConnectedStatus;
> -
> -	return retVal;
> +	return (numOfConnectedPort << 16) | portConnectedStatus;
>  }
>
>  static u32 halbtcoutsrc_GetBtPatchVer(PBTC_COEXIST pBtCoexist)
> @@ -369,9 +367,7 @@ static s32 halbtcoutsrc_GetWifiRssi(stru
>
>  	pHalData = GET_HAL_DATA(padapter);
>
> -	UndecoratedSmoothedPWDB = pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
> -
> -	return UndecoratedSmoothedPWDB;
> +	return pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
>  }
>
>  static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
> @@ -1698,8 +1694,5 @@ u32 hal_btcoex_GetDBG(struct adapter *pa
>  	leftSize -= count;
>
>  exit:
> -	count = pstr - pStrBuf;
> -/* 	DBG_871X(FUNC_ADPT_FMT ": usedsize =%d\n", FUNC_ADPT_ARG(padapter), count); */
> -
> -	return count;
> +	return pstr - pStrBuf;
>  }
> diff -u -p a/rtl8723bs/hal/rtl8723b_phycfg.c b/rtl8723bs/hal/rtl8723b_phycfg.c
> --- a/rtl8723bs/hal/rtl8723b_phycfg.c
> +++ b/rtl8723bs/hal/rtl8723b_phycfg.c
> @@ -68,9 +68,7 @@ u32 PHY_QueryBBReg_8723B(struct adapter
>
>  	OriginalValue = rtw_read32(Adapter, RegAddr);
>  	BitShift = phy_CalculateBitShift(BitMask);
> -	ReturnValue = (OriginalValue & BitMask) >> BitShift;
> -
> -	return ReturnValue;
> +	return (OriginalValue & BitMask) >> BitShift;
>
>  }
>
> @@ -293,9 +291,7 @@ u32 PHY_QueryRFReg_8723B(
>  	Original_Value = phy_RFSerialRead_8723B(Adapter, eRFPath, RegAddr);
>
>  	BitShift =  phy_CalculateBitShift(BitMask);
> -	Readback_Value = (Original_Value & BitMask) >> BitShift;
> -
> -	return Readback_Value;
> +	return (Original_Value & BitMask) >> BitShift;
>  }
>
>  /**
> diff -u -p a/rtl8723bs/hal/odm_CfoTracking.c b/rtl8723bs/hal/odm_CfoTracking.c
> --- a/rtl8723bs/hal/odm_CfoTracking.c
> +++ b/rtl8723bs/hal/odm_CfoTracking.c
> @@ -52,9 +52,7 @@ static u8 odm_GetDefaultCrytaltalCap(voi
>
>  	CrystalCap = pHalData->CrystalCap;
>
> -	CrystalCap = CrystalCap & 0x3f;
> -
> -	return CrystalCap;
> +	return CrystalCap & 0x3f;
>  }
>
>  static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
> @@ -79,12 +77,11 @@ static bool odm_GetATCStatus(void *pDM_V
>  	bool ATCStatus;
>  	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
>
> -	ATCStatus = (bool)PHY_QueryBBReg(
> +	return (bool)PHY_QueryBBReg(
>  		pDM_Odm->Adapter,
>  		ODM_REG(BB_ATC, pDM_Odm),
>  		ODM_BIT(BB_ATC, pDM_Odm)
>  	);
> -	return ATCStatus;
>  }
>
>  void ODM_CfoTrackingReset(void *pDM_VOID)
> diff -u -p a/rtl8723bs/hal/hal_com.c b/rtl8723bs/hal/hal_com.c
> --- a/rtl8723bs/hal/hal_com.c
> +++ b/rtl8723bs/hal/hal_com.c
> @@ -973,8 +973,7 @@ u8 rtw_get_mgntframe_raid(struct adapter
>  {
>
>  	u8 raid;
> -	raid = (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
> -	return raid;
> +	return (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
>  }
>
>  void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *psta)
> diff -u -p a/rtl8723bs/hal/hal_com_phycfg.c b/rtl8723bs/hal/hal_com_phycfg.c
> --- a/rtl8723bs/hal/hal_com_phycfg.c
> +++ b/rtl8723bs/hal/hal_com_phycfg.c
> @@ -1498,9 +1498,7 @@ s8 PHY_GetTxPowerByRate(
>  		return value;
>  	}
>
> -	value = pHalData->TxPwrByRateOffset[Band][RFPath][TxNum][rateIndex];
> -
> -	return value;
> +	return pHalData->TxPwrByRateOffset[Band][RFPath][TxNum][rateIndex];
>
>  }
>
> diff -u -p a/rtl8723bs/core/rtw_efuse.c b/rtl8723bs/core/rtw_efuse.c
> --- a/rtl8723bs/core/rtw_efuse.c
> +++ b/rtl8723bs/core/rtw_efuse.c
> @@ -127,9 +127,7 @@ Efuse_GetCurrentSize(
>  {
>  	u16 ret = 0;
>
> -	ret = padapter->HalFunc.EfuseGetCurrentSize(padapter, efuseType, bPseudoTest);
> -
> -	return ret;
> +	return padapter->HalFunc.EfuseGetCurrentSize(padapter, efuseType, bPseudoTest);
>  }
>
>  /*  11/16/2008 MH Add description. Get current efuse area enabled word!!. */
> @@ -253,8 +251,7 @@ u16 	Address)
>  				break;
>  			}
>  		}
> -		data = rtw_read8(Adapter, EFUSE_CTRL);
> -		return data;
> +		return rtw_read8(Adapter, EFUSE_CTRL);
>  	} else
>  		return 0xFF;
>
> @@ -276,8 +273,7 @@ bool		bPseudoTest)
>  	/* DBG_871X("===> EFUSE_OneByteRead() start, 0x34 = 0x%X\n", rtw_read32(padapter, EFUSE_TEST)); */
>
>  	if (bPseudoTest) {
> -		bResult = Efuse_Read1ByteFromFakeContent(padapter, addr, data);
> -		return bResult;
> +		return Efuse_Read1ByteFromFakeContent(padapter, addr, data);
>  	}
>
>  	/*  <20130121, Kordan> For SMIC EFUSE specificatoin. */
> @@ -329,8 +325,7 @@ bool		bPseudoTest)
>  	/* DBG_871X("===> EFUSE_OneByteWrite() start, 0x34 = 0x%X\n", rtw_read32(padapter, EFUSE_TEST)); */
>
>  	if (bPseudoTest) {
> -		bResult = Efuse_Write1ByteToFakeContent(padapter, addr, data);
> -		return bResult;
> +		return Efuse_Write1ByteToFakeContent(padapter, addr, data);
>  	}
>
>
> @@ -380,9 +375,7 @@ Efuse_PgPacketRead(struct adapter *padap
>  {
>  	int	ret = 0;
>
> -	ret =  padapter->HalFunc.Efuse_PgPacketRead(padapter, offset, data, bPseudoTest);
> -
> -	return ret;
> +	return  padapter->HalFunc.Efuse_PgPacketRead(padapter, offset, data, bPseudoTest);
>  }
>
>  int
> @@ -394,9 +387,7 @@ Efuse_PgPacketWrite(struct adapter *pada
>  {
>  	int ret;
>
> -	ret =  padapter->HalFunc.Efuse_PgPacketWrite(padapter, offset, word_en, data, bPseudoTest);
> -
> -	return ret;
> +	return  padapter->HalFunc.Efuse_PgPacketWrite(padapter, offset, word_en, data, bPseudoTest);
>  }
>
>  /*-----------------------------------------------------------------------------
> @@ -449,9 +440,7 @@ Efuse_WordEnableDataWrite(struct adapter
>  {
>  	u8 ret = 0;
>
> -	ret =  padapter->HalFunc.Efuse_WordEnableDataWrite(padapter, efuse_addr, word_en, data, bPseudoTest);
> -
> -	return ret;
> +	return  padapter->HalFunc.Efuse_WordEnableDataWrite(padapter, efuse_addr, word_en, data, bPseudoTest);
>  }
>
>  /*-----------------------------------------------------------------------------
> diff -u -p a/rtl8723bs/core/rtw_pwrctrl.c b/rtl8723bs/core/rtw_pwrctrl.c
> --- a/rtl8723bs/core/rtw_pwrctrl.c
> +++ b/rtl8723bs/core/rtw_pwrctrl.c
> @@ -1403,7 +1403,5 @@ u32 rtw_ps_deny_get(struct adapter *pada
>  	u32 deny;
>
>
> -	deny = adapter_to_pwrctl(padapter)->ps_deny;
> -
> -	return deny;
> +	return adapter_to_pwrctl(padapter)->ps_deny;
>  }
> diff -u -p a/rtl8723bs/core/rtw_io.c b/rtl8723bs/core/rtw_io.c
> --- a/rtl8723bs/core/rtw_io.c
> +++ b/rtl8723bs/core/rtw_io.c
> @@ -45,8 +45,7 @@ u8 _rtw_read8(struct adapter *adapter, u
>
>  	_read8 = pintfhdl->io_ops._read8;
>
> -	r_val = _read8(pintfhdl, addr);
> -	return r_val;
> +	return _read8(pintfhdl, addr);
>  }
>
>  u16 _rtw_read16(struct adapter *adapter, u32 addr)
> @@ -146,9 +145,7 @@ u32 _rtw_write_port(struct adapter *adap
>
>  	_write_port = pintfhdl->io_ops._write_port;
>
> -	ret = _write_port(pintfhdl, addr, cnt, pmem);
> -
> -	return ret;
> +	return _write_port(pintfhdl, addr, cnt, pmem);
>  }
>
>  int rtw_init_io_priv(struct adapter *padapter, void (*set_intf_ops)(struct adapter *padapter, struct _io_ops *pops))
> diff -u -p a/rtl8723bs/core/rtw_mlme.c b/rtl8723bs/core/rtw_mlme.c
> --- a/rtl8723bs/core/rtw_mlme.c
> +++ b/rtl8723bs/core/rtw_mlme.c
> @@ -355,8 +355,7 @@ int	rtw_init_mlme_priv(struct adapter *p
>  {
>  	int	res;
>
> -	res = _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
> -	return res;
> +	return _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
>  }
>
>  void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
> @@ -380,8 +379,7 @@ struct	wlan_network *rtw_alloc_network(s
>  {
>  	struct	wlan_network	*pnetwork;
>
> -	pnetwork = _rtw_alloc_network(pmlmepriv);
> -	return pnetwork;
> +	return _rtw_alloc_network(pmlmepriv);
>  }
>
>  void rtw_free_network_nolock(struct adapter *padapter, struct wlan_network *pnetwork);
> diff -u -p a/rtl8723bs/core/rtw_btcoex.c b/rtl8723bs/core/rtw_btcoex.c
> --- a/rtl8723bs/core/rtw_btcoex.c
> +++ b/rtl8723bs/core/rtw_btcoex.c
> @@ -108,9 +108,7 @@ s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(str
>  {
>  	s32 coexctrl;
>
> -	coexctrl = hal_btcoex_IsBTCoexCtrlAMPDUSize(padapter);
> -
> -	return coexctrl;
> +	return hal_btcoex_IsBTCoexCtrlAMPDUSize(padapter);
>  }
>
>  void rtw_btcoex_SetManualControl(struct adapter *padapter, u8 manual)
> diff -u -p a/rtl8723bs/core/rtw_recv.c b/rtl8723bs/core/rtw_recv.c
> --- a/rtl8723bs/core/rtw_recv.c
> +++ b/rtl8723bs/core/rtw_recv.c
> @@ -2390,8 +2390,7 @@ int process_recv_indicatepkts(struct ada
>
>  			if ((padapter->bDriverStopped == false) &&
>  			    (padapter->bSurpriseRemoved == false)) {
> -				retval = _FAIL;
> -				return retval;
> +				return _FAIL;
>  			}
>  		}
>  	} else { /* B/G mode */
> @@ -2414,8 +2413,7 @@ int process_recv_indicatepkts(struct ada
>  			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ process_recv_indicatepkts- recv_func free_indicatepkt\n"));
>
>  			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
> -			retval = _FAIL;
> -			return retval;
> +			return _FAIL;
>  		}
>
>  	}
> diff -u -p a/rtl8723bs/core/rtw_mlme_ext.c b/rtl8723bs/core/rtw_mlme_ext.c
> --- a/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/rtl8723bs/core/rtw_mlme_ext.c
> @@ -3581,9 +3581,7 @@ s32 issue_nulldata_in_interrupt(struct a
>  	if (da == NULL)
>  		da = get_my_bssid(&(pmlmeinfo->network));
>
> -	ret = _issue_nulldata(padapter, da, 0, false);
> -
> -	return ret;
> +	return _issue_nulldata(padapter, da, 0, false);
>  }
>
>  /* when wait_ack is ture, this function shoule be called at process context */
> diff -u -p a/rtl8723bs/core/rtw_cmd.c b/rtl8723bs/core/rtw_cmd.c
> --- a/rtl8723bs/core/rtw_cmd.c
> +++ b/rtl8723bs/core/rtw_cmd.c
> @@ -299,16 +299,14 @@ u32 rtw_init_cmd_priv(struct cmd_priv *p
>  {
>  	u32 res;
>
> -	res = _rtw_init_cmd_priv(pcmdpriv);
> -	return res;
> +	return _rtw_init_cmd_priv(pcmdpriv);
>  }
>
>  u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
>  {
>  	int	res;
>
> -	res = _rtw_init_evt_priv(pevtpriv);
> -	return res;
> +	return _rtw_init_evt_priv(pevtpriv);
>  }
>
>  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> @@ -377,9 +375,7 @@ struct	cmd_obj	*rtw_dequeue_cmd(struct c
>  {
>  	struct cmd_obj *cmd_obj;
>
> -	cmd_obj = _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);
> -
> -	return cmd_obj;
> +	return _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);
>  }
>
>  void rtw_free_cmd_obj(struct cmd_obj *pcmd)
> diff -u -p a/rtl8723bs/core/rtw_sta_mgt.c b/rtl8723bs/core/rtw_sta_mgt.c
> --- a/rtl8723bs/core/rtw_sta_mgt.c
> +++ b/rtl8723bs/core/rtw_sta_mgt.c
> @@ -204,8 +204,7 @@ struct	sta_info *rtw_alloc_stainfo(struc
>  	if (list_empty(&pfree_sta_queue->queue)) {
>  		/* spin_unlock_bh(&(pfree_sta_queue->lock)); */
>  		spin_unlock_bh(&(pstapriv->sta_hash_lock));
> -		psta = NULL;
> -		return psta;
> +		return NULL;
>  	} else {
>  		psta = LIST_CONTAINOR(get_next(&pfree_sta_queue->queue), struct sta_info, list);
>
> @@ -590,8 +589,7 @@ struct sta_info *rtw_get_bcmc_stainfo(st
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
>
> -	psta = rtw_get_stainfo(pstapriv, bc_addr);
> -	return psta;
> +	return rtw_get_stainfo(pstapriv, bc_addr);
>  }
>
>  u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
> diff -u -p a/rtl8723bs/os_dep/ioctl_cfg80211.c b/rtl8723bs/os_dep/ioctl_cfg80211.c
> --- a/rtl8723bs/os_dep/ioctl_cfg80211.c
> +++ b/rtl8723bs/os_dep/ioctl_cfg80211.c
> @@ -2525,9 +2525,7 @@ static netdev_tx_t rtw_cfg80211_monitor_
>  		DBG_8192C("should be eapol packet\n");
>
>  		/* Use the real net device to transmit the packet */
> -		ret = _rtw_xmit_entry(skb, padapter->pnetdev);
> -
> -		return ret;
> +		return _rtw_xmit_entry(skb, padapter->pnetdev);
>
>  	}
>  	else if ((frame_control & (IEEE80211_FCTL_FTYPE|IEEE80211_FCTL_STYPE))
> @@ -2849,9 +2847,7 @@ static int cfg80211_rtw_change_beacon(st
>
>  	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
>
> -	ret = rtw_add_beacon(adapter, info->head, info->head_len, info->tail, info->tail_len);
> -
> -	return ret;
> +	return rtw_add_beacon(adapter, info->head, info->head_len, info->tail, info->tail_len);
>  }
>
>  static int cfg80211_rtw_stop_ap(struct wiphy *wiphy, struct net_device *ndev)
> @@ -2896,9 +2892,7 @@ static int cfg80211_rtw_del_station(stru
>
>  		flush_all_cam_entry(padapter);	/* clear CAM */
>
> -		ret = rtw_sta_flush(padapter);
> -
> -		return ret;
> +		return rtw_sta_flush(padapter);
>  	}
>
>
> diff -u -p a/rtl8723bs/os_dep/rtw_proc.c b/rtl8723bs/os_dep/rtw_proc.c
> --- a/rtl8723bs/os_dep/rtw_proc.c
> +++ b/rtl8723bs/os_dep/rtw_proc.c
> @@ -21,9 +21,7 @@ inline struct proc_dir_entry *rtw_proc_c
>  {
>  	struct proc_dir_entry *entry;
>
> -	entry = proc_mkdir_data(name, S_IRUGO|S_IXUGO, parent, data);
> -
> -	return entry;
> +	return proc_mkdir_data(name, S_IRUGO|S_IXUGO, parent, data);
>  }
>
>  inline struct proc_dir_entry *rtw_proc_create_entry(const char *name, struct proc_dir_entry *parent,
> @@ -31,9 +29,7 @@ inline struct proc_dir_entry *rtw_proc_c
>  {
>  	struct proc_dir_entry *entry;
>
> -	entry = proc_create_data(name,  S_IFREG|S_IRUGO, parent, fops, data);
> -
> -	return entry;
> +	return proc_create_data(name,  S_IFREG|S_IRUGO, parent, fops, data);
>  }
>
>  static int proc_get_dummy(struct seq_file *m, void *v)
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553765411-31204-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

