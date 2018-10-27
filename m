X-GM-THRID: 6616097415299596288
X-Received: by 2002:ab0:2151:: with SMTP id t17mr6393508ual.8.1540635405166;
        Sat, 27 Oct 2018 03:16:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e90c:: with SMTP id c12ls682302vso.10.gmail; Sat, 27 Oct
 2018 03:16:44 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ciK/A6ZlqBK0UUhpARuWjorU1ZszkBMtpoPTyfsPcWpgazrjDxYnf5EJ3AsS+/s6ScfnNT
X-Received: by 2002:a67:68c3:: with SMTP id d186mr6584645vsc.18.1540635404599;
        Sat, 27 Oct 2018 03:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540635404; cv=none;
        d=google.com; s=arc-20160816;
        b=zvDDnz0lPkqyvkO0t2tuGJqnu84F/lLFHFZN4V02Gy6RN4F2UngGLsMPO0nQQcIJnT
         RyCv8fhcyWFjKeBdYCugRxqYIbnDiyd0SLuifoPeCSbc3wyQPfD20N2MvzKMX5s5sK05
         oCAOTejaOBw2wZJR8c22AFQjY9Ts8HJ5v+W66hY/0oLmwhm3iwThZzdPQB/vVxfmKa5R
         8IlO1+MtY+OJSPfjtQkjRX+AYA8eZP1GV0jSJs3J+//031928BuSnQByPnXuFi7eL1D9
         R6YgQy6ULuVMGPopmlOykyl/XJLtmBRkgVHVL8kL2WTBSHymvk0d1jxzpWAn13/AF+Cf
         NqiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=9awVfoKYwv/G86bVjuabrMcXKEXRsJb3l286qQ2XKoc=;
        b=hVppIOmqugVEiolv2+F3O54VgScsrcjywkBXm/gu5bl0q7iSSloZqvm4pACWsCyNau
         pGzcYslXiWbH6HAuy3Estn0LJbzrTNUY5WxgUWCnjt7RU0ZjlFDjpQ7cg8H6r2SMbvbl
         F+nDrSXFetg1i+MYhv1mmEoFj93UFQfI55JZKB5or3bv7bH1Bf5TeckULVtuj13gXfdn
         hP2DP5JO4nF9NqOuufapXzEB3jGjcSurJgPycxS+Ph9SVXayoKnHBmRHv+liTPhfyKFo
         EDC8wXwHKxb/ldidb6RhrTf8FPnX0OwQwjVELxk0qhUqVNfQcWPeQ6o5n1SazX452yaO
         g7og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gNxbaWWV;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x12b.google.com (mail-it1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id m3si73382vso.0.2018.10.27.03.16.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 03:16:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) client-ip=2607:f8b0:4864:20::12b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gNxbaWWV;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12b.google.com with SMTP id h14-v6so4547990itf.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Oct 2018 03:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9awVfoKYwv/G86bVjuabrMcXKEXRsJb3l286qQ2XKoc=;
        b=gNxbaWWVyzrlZyUFlq6fYi166NXO8+nAP3MdZ1SpUoPFC08v28Pi4x8MDhbgx7rwfs
         86tTc0vZqLkb0ko/UG/1AwlBYxkBNMVNp8H+CN16nQqh66qiH1cKrVqHgrxKz6Mybe0S
         6W73xL9YOx1OPFCW6mogdCZZjTmOMytbPBQMgkB5x6TbS9fS1pHlmosiMZvAnp5NFT7r
         fJ7weTpXQEqP1iXjT4xJPkwn0xKgo5vigGt+5rCuhgFqcOnYQqjMY5wGDeXDvi1KmT8e
         +GRqBYROZUi3Em8aTrfLF8ToiC/5qaXKLNA6PgxseM9c95mEC8Z1Mh9iTnBXtPPC/i61
         fHcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9awVfoKYwv/G86bVjuabrMcXKEXRsJb3l286qQ2XKoc=;
        b=NCTfXI5NFOpf2Ri9dVw5B8KrhPHAWdO0SQgaxRZSIvYZlJwojQ1G0ekv/cU3DWXXZh
         vP/NoV35h7Glpgs22xfjhM8K3s3jDEY2EP7+TtAHB4zmg45Dh3hn5BXNiPvlhqQ+2yrW
         3jzAwhurS2CkbZAGT51g4daHfGm7AOeOATNC0CfJXmO+GGVcDQOfxPiucjdOhedhYf98
         iY5/SDwrFv6w1dvVV1c/geVRlF6Mw56BTERTd9Y7CrBMc9mB69KU7szY5zChrKLm7ygY
         afzJZX0MwVPkeD0gXwjbiGfxDgKLOW5LDnl9d8PEAiLHaDleEZ9JI/yjpIxLbegM9kOc
         iLfw==
X-Gm-Message-State: AGRZ1gLwjNnpp223TXOvkhZ0EdKU5f3Kv8FlDOaDWkKseIiwNZkVmO8/
	lVPF08mYhBP41ehgqf4Wt++b67cy
X-Received: by 2002:a24:2751:: with SMTP id g78-v6mr5540142ita.17.1540635404032;
        Sat, 27 Oct 2018 03:16:44 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id l19-v6sm31116ita.36.2018.10.27.03.16.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 27 Oct 2018 03:16:43 -0700 (PDT)
Date: Sat, 27 Oct 2018 03:16:39 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtlwifi: Remove function that only returns
 zero
Message-ID: <e0114b7099a5ba41e39bf1aa42b0ecc870e5920e.1540632666.git.m.maya.nakamura@gmail.com>
References: <cover.1540632666.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540632666.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Because the odm_sq_process_patch_rt_cid_819x_lenovo function is only called
to return zero, remove the unnecessary function and change the section that
calls it. Issues found by Coccinelle's semantic patch results for
returnvar.cocci and checkpatch.pl.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
Changes since v1:
- Set the sq variable to zero.
- Negate the if condition and drop the else branch.
- Remove unnecessary parentheses in the if condition as pointed out by
  checkpatch.

 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index c71ac1276ebe..1b05db36e279 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -477,14 +477,6 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
 		return 100 + ant_power;
 }
 
-static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
-						  u8 is_cck_rate, u8 pwdb_all,
-						  u8 path, u8 RSSI)
-{
-	u8 sq = 0;
-	return sq;
-}
-
 static u8 odm_evm_db_to_percentage(s8 value)
 {
 	/* -33dB~0dB to 0%~99% */
@@ -883,13 +875,10 @@ static void odm_rx_phy_status_jaguar_series_parsing(
 		phy_info->recv_signal_power = rx_pwr_all;
 		/*(3) Get Signal Quality (EVM)*/
 		{
-			u8 sq;
+			u8 sq = 0;
 
-			if ((dm->support_platform == ODM_WIN) &&
-			    (dm->patch_id == RT_CID_819X_LENOVO))
-				sq = odm_sq_process_patch_rt_cid_819x_lenovo(
-					dm, is_cck_rate, pwdb_all, 0, 0);
-			else
+			if (!(dm->support_platform == ODM_WIN &&
+			      dm->patch_id == RT_CID_819X_LENOVO))
 				sq = phydm_get_signal_quality_8812(phy_info, dm,
 								   phy_sta_rpt);
 
-- 
2.17.1


