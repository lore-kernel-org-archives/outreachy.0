X-GM-THRID: 6253638659400007680
X-Received: by 10.50.97.105 with SMTP id dz9mr4915007igb.8.1457225089317;
        Sat, 05 Mar 2016 16:44:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.100 with SMTP id i91ls1244432qgd.66.gmail; Sat, 05 Mar
 2016 16:44:48 -0800 (PST)
X-Received: by 10.140.40.239 with SMTP id x102mr11465474qgx.23.1457225088471;
        Sat, 05 Mar 2016 16:44:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r75si2238402pfr.0.2016.03.05.16.44.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 16:44:48 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x188so3417424pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 16:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WuTwxLqDDHFEhPYPnMF+cYNPeO7mtqfMfFD97gwaeDc=;
        b=A10cREKJLU/YKRikh4b6H8QuZoQG7fodAHOPq2i2Ew7cIZgdthX9vRKaqcEsnqxwVB
         RfQM+U2Pe8k4/wHNfEKj/thpClU7U86ZOhg5kUzAeNDVvVER4HWcZZiVBVFv3JNWwDBN
         jxmOmzE0QDm8pbGRWsY3OjY+Z382fjQQd415fqAzW+6+zf8YoyuzBD0yGdXXGMaZSbAB
         etdJNF/x5iZm7AyfrUjn7rmulRg7USsejDotV3V53FZ3iUbiKZwqKN8dlQvAwgQiZSPE
         E1/grD7+rCHcoTHJLOITzmQXmlVi9mUdaJw1j/OWitIfrgw36X65WsM4zsgJ7o9rep8C
         ECrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WuTwxLqDDHFEhPYPnMF+cYNPeO7mtqfMfFD97gwaeDc=;
        b=TYzgnkB6ELG3sk++tY9CFObTirfWhpAajn9cb3ms+8ny69DkIVdZINoTKBfVPBBbQV
         xEWqPWS8ejcGbxP3h8B5kio5vi109tqY9oMmlVYs9iM+ePxDSpVyAn46aSs0BQdKtWuA
         dEKC3Gjq2RcaxHF6Qyyj4bQSZ3P7i965zIASM0IecNS0C9AVU6hQS2D2XaTJuNQfiesg
         xP+dpGqfqV/PrklMx0gcha4pgihzCyQHdAuDt+t+PIM9cE3FE2bBYKjP78IHHWIDS4hq
         vjQBa8UtTs4qyaJv93/3FLWaHJnhs2WRHw3ExWOJFzgV+U+qcHnaRdYC1r8upg77vh8b
         2TBg==
X-Gm-Message-State: AD7BkJKYH1TXqDbDO5z7WQjBBUgsVFlXe78OEMlM6DsqW++H/3Ctljjx/zUubEaNxktoFQ==
X-Received: by 10.98.34.205 with SMTP id p74mr23235301pfj.93.1457225088199;
        Sat, 05 Mar 2016 16:44:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.77.50.199])
        by smtp.gmail.com with ESMTPSA id e79sm14748394pfb.76.2016.03.05.16.44.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 16:44:47 -0800 (PST)
Date: Sun, 6 Mar 2016 06:14:43 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: rtl871x_mp_ioctl: Remove exceptional &
 on function name
Message-ID: <20160306004443.GA23806@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

In this file, function names are otherwise used as pointers without
&.

The Coccinelle semantic patch that is used to make this change is as
follows:

// <smpl>
@r@
identifier f;
@@
f(...) { ... }
@@
identifier r.f;
@@
- &f
+ f
@m@
type T;
identifier f;
@@
T f(...);
@@
identifier m.f;
@@
- &f
+ f
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Fixed aligining of comments

 drivers/staging/rtl8712/rtl871x_mp_ioctl.h | 118 ++++++++++++++---------------
 1 file changed, 59 insertions(+), 59 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
index 8e7c7f8..8dc8980 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
@@ -150,90 +150,90 @@ uint oid_rt_get_power_mode_hdl(
 #ifdef _RTL871X_MP_IOCTL_C_ /* CAUTION!!! */
 /* This ifdef _MUST_ be left in!! */
 static const struct oid_obj_priv oid_rtl_seg_81_80_00[] = {
-	{1, &oid_null_function},	/*0x00	OID_RT_PRO_RESET_DUT */
-	{1, &oid_rt_pro_set_data_rate_hdl},	/*0x01*/
-	{1, &oid_rt_pro_start_test_hdl},/*0x02*/
-	{1, &oid_rt_pro_stop_test_hdl},	/*0x03*/
-	{1, &oid_null_function},	/*0x04	OID_RT_PRO_SET_PREAMBLE*/
-	{1, &oid_null_function},	/*0x05	OID_RT_PRO_SET_SCRAMBLER*/
-	{1, &oid_null_function},	/*0x06	OID_RT_PRO_SET_FILTER_BB*/
-	{1, &oid_null_function},	/*0x07
+	{1, oid_null_function},		/*0x00	OID_RT_PRO_RESET_DUT */
+	{1, oid_rt_pro_set_data_rate_hdl},	/*0x01*/
+	{1, oid_rt_pro_start_test_hdl}, /*0x02*/
+	{1, oid_rt_pro_stop_test_hdl},	/*0x03*/
+	{1, oid_null_function},		/*0x04	OID_RT_PRO_SET_PREAMBLE*/
+	{1, oid_null_function},		/*0x05	OID_RT_PRO_SET_SCRAMBLER*/
+	{1, oid_null_function},		/*0x06	OID_RT_PRO_SET_FILTER_BB*/
+	{1, oid_null_function},		/*0x07
 					 * OID_RT_PRO_SET_MANUAL_DIVERS_BB*/
-	{1, &oid_rt_pro_set_channel_direct_call_hdl},	/*0x08*/
-	{1, &oid_null_function},	/*0x09
+	{1, oid_rt_pro_set_channel_direct_call_hdl},	/*0x08*/
+	{1, oid_null_function},		/*0x09
 				* OID_RT_PRO_SET_SLEEP_MODE_DIRECT_CALL*/
-	{1, &oid_null_function},	/*0x0A
+	{1, oid_null_function},		/*0x0A
 				* OID_RT_PRO_SET_WAKE_MODE_DIRECT_CALL*/
-	{1, &oid_rt_pro_set_continuous_tx_hdl},	/*0x0B
+	{1, oid_rt_pro_set_continuous_tx_hdl},	/*0x0B
 				* OID_RT_PRO_SET_TX_CONTINUOUS_DIRECT_CALL*/
-	{1, &oid_rt_pro_set_single_carrier_tx_hdl}, /*0x0C
+	{1, oid_rt_pro_set_single_carrier_tx_hdl}, /*0x0C
 				* OID_RT_PRO_SET_SINGLE_CARRIER_TX_CONTINUOUS*/
-	{1, &oid_null_function},	/*0x0D
+	{1, oid_null_function},		/*0x0D
 				* OID_RT_PRO_SET_TX_ANTENNA_BB*/
-	{1, &oid_rt_pro_set_antenna_bb_hdl},		/*0x0E*/
-	{1, &oid_null_function},	/*0x0F	OID_RT_PRO_SET_CR_SCRAMBLER*/
-	{1, &oid_null_function},	/*0x10	OID_RT_PRO_SET_CR_NEW_FILTER*/
-	{1, &oid_rt_pro_set_tx_power_control_hdl}, /*0x11
+	{1, oid_rt_pro_set_antenna_bb_hdl},		/*0x0E*/
+	{1, oid_null_function},		/*0x0F	OID_RT_PRO_SET_CR_SCRAMBLER*/
+	{1, oid_null_function},		/*0x10	OID_RT_PRO_SET_CR_NEW_FILTER*/
+	{1, oid_rt_pro_set_tx_power_control_hdl}, /*0x11
 				* OID_RT_PRO_SET_TX_POWER_CONTROL*/
-	{1, &oid_null_function},	/*0x12	OID_RT_PRO_SET_CR_TX_CONFIG*/
-	{1, &oid_null_function},	/*0x13
+	{1, oid_null_function},		/*0x12	OID_RT_PRO_SET_CR_TX_CONFIG*/
+	{1, oid_null_function},		/*0x13
 					 * OID_RT_PRO_GET_TX_POWER_CONTROL*/
-	{1, &oid_null_function},	/*0x14
+	{1, oid_null_function},		/*0x14
 					 * OID_RT_PRO_GET_CR_SIGNAL_QUALITY*/
-	{1, &oid_null_function},	/*0x15	OID_RT_PRO_SET_CR_SETPOINT*/
-	{1, &oid_null_function},	/*0x16	OID_RT_PRO_SET_INTEGRATOR*/
-	{1, &oid_null_function},	/*0x17	OID_RT_PRO_SET_SIGNAL_QUALITY*/
-	{1, &oid_null_function},	/*0x18	OID_RT_PRO_GET_INTEGRATOR*/
-	{1, &oid_null_function},	/*0x19	OID_RT_PRO_GET_SIGNAL_QUALITY*/
-	{1, &oid_null_function},	/*0x1A	OID_RT_PRO_QUERY_EEPROM_TYPE*/
-	{1, &oid_null_function},	/*0x1B	OID_RT_PRO_WRITE_MAC_ADDRESS*/
-	{1, &oid_null_function},	/*0x1C	OID_RT_PRO_READ_MAC_ADDRESS*/
-	{1, &oid_null_function},	/*0x1D	OID_RT_PRO_WRITE_CIS_DATA*/
-	{1, &oid_null_function},	/*0x1E	OID_RT_PRO_READ_CIS_DATA*/
-	{1, &oid_null_function}		/*0x1F	OID_RT_PRO_WRITE_POWER_CONTROL*/
+	{1, oid_null_function},		/*0x15	OID_RT_PRO_SET_CR_SETPOINT*/
+	{1, oid_null_function},		/*0x16	OID_RT_PRO_SET_INTEGRATOR*/
+	{1, oid_null_function},		/*0x17	OID_RT_PRO_SET_SIGNAL_QUALITY*/
+	{1, oid_null_function},		/*0x18	OID_RT_PRO_GET_INTEGRATOR*/
+	{1, oid_null_function},		/*0x19	OID_RT_PRO_GET_SIGNAL_QUALITY*/
+	{1, oid_null_function},		/*0x1A	OID_RT_PRO_QUERY_EEPROM_TYPE*/
+	{1, oid_null_function},		/*0x1B	OID_RT_PRO_WRITE_MAC_ADDRESS*/
+	{1, oid_null_function},		/*0x1C	OID_RT_PRO_READ_MAC_ADDRESS*/
+	{1, oid_null_function},		/*0x1D	OID_RT_PRO_WRITE_CIS_DATA*/
+	{1, oid_null_function},		/*0x1E	OID_RT_PRO_READ_CIS_DATA*/
+	{1, oid_null_function}		/*0x1F	OID_RT_PRO_WRITE_POWER_CONTROL*/
 };
 
 static const struct oid_obj_priv oid_rtl_seg_81_80_20[] = {
-	{1, &oid_null_function},	/*0x20	OID_RT_PRO_READ_POWER_CONTROL*/
-	{1, &oid_null_function},	/*0x21	OID_RT_PRO_WRITE_EEPROM*/
-	{1, &oid_null_function},	/*0x22	OID_RT_PRO_READ_EEPROM*/
-	{1, &oid_rt_pro_reset_tx_packet_sent_hdl},	/*0x23*/
-	{1, &oid_rt_pro_query_tx_packet_sent_hdl},	/*0x24*/
-	{1, &oid_rt_pro_reset_rx_packet_received_hdl},	/*0x25*/
-	{1, &oid_rt_pro_query_rx_packet_received_hdl},	/*0x26*/
-	{1, &oid_rt_pro_query_rx_packet_crc32_error_hdl},/*0x27*/
-	{1, &oid_null_function},	/*0x28
+	{1, oid_null_function},		/*0x20	OID_RT_PRO_READ_POWER_CONTROL*/
+	{1, oid_null_function},		/*0x21	OID_RT_PRO_WRITE_EEPROM*/
+	{1, oid_null_function},		/*0x22	OID_RT_PRO_READ_EEPROM*/
+	{1, oid_rt_pro_reset_tx_packet_sent_hdl},	/*0x23*/
+	{1, oid_rt_pro_query_tx_packet_sent_hdl},	/*0x24*/
+	{1, oid_rt_pro_reset_rx_packet_received_hdl},	/*0x25*/
+	{1, oid_rt_pro_query_rx_packet_received_hdl},	/*0x26*/
+	{1, oid_rt_pro_query_rx_packet_crc32_error_hdl},/*0x27*/
+	{1, oid_null_function},		/*0x28
 					 *OID_RT_PRO_QUERY_CURRENT_ADDRESS*/
-	{1, &oid_null_function},	/*0x29
+	{1, oid_null_function},		/*0x29
 					 *OID_RT_PRO_QUERY_PERMANENT_ADDRESS*/
-	{1, &oid_null_function},	/*0x2A
+	{1, oid_null_function},		/*0x2A
 				 *OID_RT_PRO_SET_PHILIPS_RF_PARAMETERS*/
-	{1, &oid_rt_pro_set_carrier_suppression_tx_hdl},/*0x2B
+	{1, oid_rt_pro_set_carrier_suppression_tx_hdl},/*0x2B
 				 *OID_RT_PRO_SET_CARRIER_SUPPRESSION_TX*/
-	{1, &oid_null_function},	/*0x2C	OID_RT_PRO_RECEIVE_PACKET*/
-	{1, &oid_null_function},	/*0x2D	OID_RT_PRO_WRITE_EEPROM_BYTE*/
-	{1, &oid_null_function},	/*0x2E	OID_RT_PRO_READ_EEPROM_BYTE*/
-	{1, &oid_rt_pro_set_modulation_hdl}		/*0x2F*/
+	{1, oid_null_function},		/*0x2C	OID_RT_PRO_RECEIVE_PACKET*/
+	{1, oid_null_function},		/*0x2D	OID_RT_PRO_WRITE_EEPROM_BYTE*/
+	{1, oid_null_function},		/*0x2E	OID_RT_PRO_READ_EEPROM_BYTE*/
+	{1, oid_rt_pro_set_modulation_hdl}		/*0x2F*/
 };
 
 static const struct oid_obj_priv oid_rtl_seg_81_80_40[] = {
-	{1, &oid_null_function},			/*0x40*/
-	{1, &oid_null_function},			/*0x41*/
-	{1, &oid_null_function},			/*0x42*/
-	{1, &oid_rt_pro_set_single_tone_tx_hdl},	/*0x43*/
-	{1, &oid_null_function},			/*0x44*/
-	{1, &oid_null_function}				/*0x45*/
+	{1, oid_null_function},				/*0x40*/
+	{1, oid_null_function},				/*0x41*/
+	{1, oid_null_function},				/*0x42*/
+	{1, oid_rt_pro_set_single_tone_tx_hdl},		/*0x43*/
+	{1, oid_null_function},				/*0x44*/
+	{1, oid_null_function}				/*0x45*/
 };
 
 static const struct oid_obj_priv oid_rtl_seg_81_80_80[] = {
-	{1, &oid_null_function},	/*0x80	OID_RT_DRIVER_OPTION*/
-	{1, &oid_null_function},	/*0x81	OID_RT_RF_OFF*/
-	{1, &oid_null_function}		/*0x82	OID_RT_AUTH_STATUS*/
+	{1, oid_null_function},		/*0x80	OID_RT_DRIVER_OPTION*/
+	{1, oid_null_function},		/*0x81	OID_RT_RF_OFF*/
+	{1, oid_null_function}		/*0x82	OID_RT_AUTH_STATUS*/
 
 };
 
 static const struct oid_obj_priv oid_rtl_seg_81_85[] = {
-	{1, &oid_rt_wireless_mode_hdl}	/*0x00	OID_RT_WIRELESS_MODE*/
+	{1, oid_rt_wireless_mode_hdl}	/*0x00	OID_RT_WIRELESS_MODE*/
 };
 
 #else /* _RTL871X_MP_IOCTL_C_ */
@@ -384,7 +384,7 @@ static struct mp_ioctl_handler mp_ioctl_hdl[] = {
 			     oid_rt_pro_write_rf_reg_hdl,
 			     OID_RT_PRO_RF_WRITE_REGISTRY},
 	{sizeof(struct rfintfs_parm), NULL, 0},
-	{0, &mp_ioctl_xmit_packet_hdl, 0},/*12*/
+	{0, mp_ioctl_xmit_packet_hdl, 0},/*12*/
 	{sizeof(struct psmode_param), NULL, 0},/*13*/
 	{sizeof(struct eeprom_rw_param), NULL, 0},/*14*/
 	{sizeof(struct eeprom_rw_param), NULL, 0},/*15*/
-- 
1.9.1


