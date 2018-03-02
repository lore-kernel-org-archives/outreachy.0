X-GM-THRID: 6528350771037077504
X-Received: by 10.99.125.78 with SMTP id m14mr1047328pgn.26.1520000112352;
        Fri, 02 Mar 2018 06:15:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:aa98:: with SMTP id d24-v6ls3966421plr.3.gmail; Fri,
 02 Mar 2018 06:15:11 -0800 (PST)
X-Google-Smtp-Source: AG47ELsC52aWGjv50FHhuoR8fVBVNssbTXnVbqYM09GErsmXSfWg36UCQLjPGs2CCSgPvwbeGK+Y
X-Received: by 2002:a17:902:221:: with SMTP id 30-v6mr1079711plc.35.1520000111324;
        Fri, 02 Mar 2018 06:15:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520000111; cv=none;
        d=google.com; s=arc-20160816;
        b=joAtcop7s+UpZsqMvNdNeI7QFrtcsG4ivftaJF/vBTjL5Z/Q2ak+quVh89coYbHWMY
         GkEbYEVPoeV4/twklpIxRfgbEKyc13Pnd61VVuyqVeEEALyKfNVyX9Pb62D5wbv51hMu
         hphwgA31wtHNqmIg7HtOs5bk//IpQ96NxIw+DwLvMpayvYgF+oNBwzJpWxXFrwki8zcN
         JrUbfGEti6UYHPCaLxT73d+b5HlcbSGBqqaO/bf9/UN/nVDmP2Q0Vx/DN3Let3r1hDNZ
         5hSCdXnV9bg3gpqKoJp1mMjIUrmkMDnhbc3F4fwRVML0fYq3sf+wqmRbXZc1qT8qZTEH
         8few==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Mwl0VuAVI9SMZjm/eybBoE07WQgoEZpNFSgCj+ODsFk=;
        b=c66yFFupruUm9GHE3U2e60NU4iLJXo4jy1Oc3cMIdMD/sRa8MY7l1Q41D6ZZEMos8i
         SOW6z/Zg7LT6Z5TfqWJQMbR097HZJXrD3/DYxBUEQPZ9mF5/1+Bf9LJenURbOFlDJ+Sp
         YFU1oojBhlcO6AafHNl4m9lpRt0AbwsvGFwpfAO4b35bu754KJA9FVdzoW9EcVXha++y
         yV/OLUh/r+xmdK4JdRLdboNFtOShH29vmZnW9EuH7gT8nwO2R36Pe4m8HFyFBUorD8Rw
         CBu4H2hQSF/X/9Pih/Kh0YQrFG5qF1uBQn3IKSYvzvyhm2pJB03FNWNJrtHU0IAwqX1U
         kKmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhcwA9S6;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e6si338855pff.1.2018.03.02.06.15.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 06:15:11 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhcwA9S6;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id u5so4050708pfh.6
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 06:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Mwl0VuAVI9SMZjm/eybBoE07WQgoEZpNFSgCj+ODsFk=;
        b=MhcwA9S68VdaW6qXHc+x5L8keGTIUyRLxoBxY/+ePWydGpFY8PdRZ9hXjnlXrN7V2B
         Y2YO1X4dZsVqyA9/ntnCdM+TsYcaoPYJVqPmhVZMGor/UJODPMpygKE+VUv/301iVtfv
         8YXX7XtXlu3m308OTDgi+szsmQwtPcIrD232JWmc1GGpbJz6IvVQPmKoa0u7vnS5k5KM
         tI9X2EXERpovac9swG5Otw67N1CGbPGT7knj7GV+ygqhM9jATT/WlhROMPQgmpwtkF9t
         7xm+M09b9PU7ilhhqWyAdkSy+bk5DAG6MqeCcfn0eMImDT9pqLK37Mq9GrSuiHJ5yqWc
         1ang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Mwl0VuAVI9SMZjm/eybBoE07WQgoEZpNFSgCj+ODsFk=;
        b=Y5AJIhYsRHR1NakhLHsXdggFodMYSH14T+6xMITJJSOZnZa/zQR5X9LpKznZCFIThs
         1mHvQUCL6JahyEygOvjicWHx9oBHGKZLSpQ9kbziX0NWN3igSc5fTW2b+4Fm9sYL5nxm
         Q0qjhpT6SGBJjAV1on9FNTSLuoZDSyRj7sq8yMzV4n5mdwy/cceKiK+b07ptmQej0b27
         EPoCotVCsTqZRcIsGs5ZyousmxteLDaxpLbii86jcVK8KYV7BSSmzh6kA2J4vfStVEH3
         o9go+3SS4EuQlvlve+s3D3lvuq7/oT7nZw8S5m5Gpb/Hi1EpmZn5+1rQ4xDl6TLc8QyV
         oYZA==
X-Gm-Message-State: APf1xPA5+DjRKnONpnHsTNG5DcZmnCpJweh+1IM/o9x7q9NAe6PmVlTk
	JGuLPGTeBya2eM2w9gLrs8H0tQ==
X-Received: by 10.101.100.200 with SMTP id t8mr4780457pgv.120.1520000111012;
        Fri, 02 Mar 2018 06:15:11 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id n79sm13562960pfa.55.2018.03.02.06.15.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 06:15:10 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: rtlwifi: remove unneeded semicolon
Date: Fri,  2 Mar 2018 06:14:39 -0800
Message-Id: <1520000079-20306-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unneeded semicolon after 'while' and 'switch' statements. Issue
found using semicolon.cocci Coccinelle script.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.c | 2 +-
 drivers/staging/rtlwifi/rtl8822be/phy.c                  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.c b/drivers/staging/rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.c
index d320311..e2c72af 100644
--- a/drivers/staging/rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.c
+++ b/drivers/staging/rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.c
@@ -1311,7 +1311,7 @@ static void _phy_iq_calibrate_8822b(struct phy_dm_struct *dm, bool reset)
 		iqk_info->kcount = 0;
 		ODM_RT_TRACE(dm, ODM_COMP_CALIBRATION, "[IQK]delay 50ms!!!\n");
 		ODM_delay_ms(50);
-	};
+	}
 
 	_iqk_backup_iqk_8822b(dm, 1);
 	_iqk_fill_iqk_report_8822b(dm, 0);
diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
index ef37ae9..6697aee 100644
--- a/drivers/staging/rtlwifi/rtl8822be/phy.c
+++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
@@ -1251,7 +1251,7 @@ static void _rtl8822be_get_rate_values_of_tx_power_by_rate(
 		RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
 			 "Invalid reg_addr 0x%x in %s()\n", reg_addr, __func__);
 		break;
-	};
+	}
 }
 
 void rtl8822be_store_tx_power_by_rate(struct ieee80211_hw *hw, u32 band,
-- 
2.7.4


