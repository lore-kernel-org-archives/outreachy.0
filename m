X-GM-THRID: 6670748157895245824
X-Received: by 2002:a05:620a:1212:: with SMTP id u18mr668407qkj.39.1553154591943;
        Thu, 21 Mar 2019 00:49:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:227a:: with SMTP id o55ls2190510qtc.8.gmail; Thu, 21 Mar
 2019 00:49:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzm66L7taCQPkxA9tzHhWrO9Jg0BD04lWctKEHGiIxINIanoB6g25kVQ0PypDEcomFHX276
X-Received: by 2002:ac8:3723:: with SMTP id o32mr750063qtb.23.1553154591506;
        Thu, 21 Mar 2019 00:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553154591; cv=none;
        d=google.com; s=arc-20160816;
        b=dxdNQ23sNmE1Engk1ZJP8L4gSRtAx5Tavv7D61ozouW2b9GQh1IWB0ASlG+WCVhOLn
         fn93AWtGPf3HkIp2IWO0zNKAHxY+fI6Rc8zCO95DLSuq0fziHy8vQq3+H9ihc9HnDpbv
         1nIASof8V5N4jApJn0lmam+YRKVFSJCI8ckRoG/3pBkWh1UURuD6zH0qAKeVgYfc+mZ3
         DdGB554J+6LQycaoQaf/aETSXtecg2a+09oqDL13NTZbgS51BXhNi0+kEBc9Zcwic66p
         +zEaouUsaF+94kn+4YazznwC3C3ioSB52mp37g8ErX/iAgqzIXB2tuFyxEiH9Gx90RH7
         1Tjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XzNASdpAf8TXxE0vECralddsTHJT7HhhoOTjcGN5T/4=;
        b=OfDpmsRC36kKj8H4EZYRVRvG6YsKETdKT87lnwKiMoseVl226AlV3XPZWoYdCnxhOf
         g3qPTQbL9lUiPROmnW4AHi8Dn0O2wQSrvSQtaCZ2kxHlYpoDbJ6K+lnOaZ/qkhj1/Dsc
         RpUuQiXEDD8Q/U6J6stvU/Hn3ESzqtv1hmkY8YTR7wz5PDKZApTvimCKi3FgHGD1ekQa
         IUMN5FusEOY5aenDMkMkuHB7d8pkOmT6mDFNOujI96bd9sxa9M/r5UCxaINQJP5iLwur
         GctrY0mheG/vfffvO9o0Gszxx8SEtMPKHGLJiBBmU0dSd6uyqvS5R2AuiJMLZPc963Qs
         aHbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=bjz75ZXC;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.139 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic306-19.consmr.mail.sg3.yahoo.com (sonic306-19.consmr.mail.sg3.yahoo.com. [106.10.241.139])
        by gmr-mx.google.com with ESMTPS id t17si434630qtq.0.2019.03.21.00.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.139 as permitted sender) client-ip=106.10.241.139;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=bjz75ZXC;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.139 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553154588; bh=XzNASdpAf8TXxE0vECralddsTHJT7HhhoOTjcGN5T/4=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=bjz75ZXC2KNvpuTrUoJ9g0hFUsnvVZOMECFizTkh/uBRnzBaC2/PXFQFaiROjQ6uy0aOJwqggTu6Enxo4lXz5X5Q6RfFDF+O2AP3rLx6nmWxUVlU6P+U5yyQEztxxDdzkLu/A5ZXHp48/pGQDEzyD06zf3FAA/5ooVUW2/StxowSWjwjT5M7i3wWDUZo1aUtWhZvooZCLYouxY7sP6DsrjU0APe+EMz7P0HlZme0+cXdM+OznjRZ/evg/sBH5ZOwtIWihcl+VIoL5QIKyOilkgaEUtrDuuiYmdvTle+OmEJm6A/DnezmiCMo20I0RMcDdkMVLPN8B+g/JDyhNoV8gg==
X-YMail-OSG: suks_qQVM1l7bMXDHDVoMoK4UHDfYiyRK9HtJ6Dv4YwZ8M1Bp2jfUC3bfWJxHc1
 9pnUqCUYxTRfHZ_7rGeEoDDbOuo9mP2js3woUvPdzE_g6qTk_DtJFGJ3iipwgOpisBNwKKkimXPu
 navMCdOCjos5BNQsLEDjBxnsdCbnFPq5X1Ssd6tkbbbiBreUI2b3rSy10MubGTZUDoX0.jiT46ik
 gyQE_ThUkT16jJqVaDe5jmhvQDgu48.1N9A7UwJQ3rpLBtKWAW5uphFZ6K4SCniCIIKafghBfSG2
 EMxJaU_oKF2GUU2zzI7tlDQoy145yAJaojLx13mnLCfVzMiG9MwhOrc_r4BamfsM8Xj0EVimfI9r
 b2TwIxMFlnQw4qudX_tSrzEkw0JsuCYzCAyLVted8SI5j23fG_ZtRXqkHP_M_PLFy0FBjXxoLkyC
 fAgp78tIfQOfZSbWex5Ns7ULC3fCqhpSEYFCbv7IHrIUJxjuPytw4zQYT6.w2ABncTGF3.Qvu1pW
 O3gwEfrN._lkOr4FlDRPoYY95Gcd5CAUQS1qnK3RR6IKjWAl9XhftpJ9aBTsxbZ5JMybRQUxox5i
 z3YFloA4dSkcb4yfIGO8T_y35LMhYN_zqb7ALw28biRHZoDEC1tbi3eqMSkp8rA6f0Xx.ph858IA
 Y67wvP.S_cQ7dGf_O.VnHiZ4isei8T9kCLWdarXdexhypYv49kDGtTURXDKkFykJC54iwQ9a528N
 zHhr1LjAT1HzYXtmUkOGudGDAx17old.RcICnocuLqb3O9pJeeEsL5mTcgg..Gnt8RTJ7fN1Wt0V
 hsHrvfZneO04bn2oRS6OTzDAyIvBFcSH5G4b8pcmqRtTQq4mJlhdxGXFY3xxMFOpIwUjrxLyToTL
 jTCmpoEjnxpm6qiIh2KW5wvS_i6oQN4rb9UQegjhXHKxLDLHUJ7JsOuJjN1qCk176ZowBwOOqjF.
 KZWLecEycxWs8HMH_aO.eAAjIYYQMIA2aChi7nMNdPJBttygnsj1QIsUVs.0S725AUmJ1WBoKGl5
 n0aB4h4oxN1quZjjUZsvtqcxtO80ZlG3AmJS4w0kgyD7t3S34HxVYeJI2yXlDUkQ0eSjRcTouMge
 l6yzL8XDOtFWzSe68Bg2wOaNruLUyulLh0g--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 07:49:48 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6bd7950dbdc82c8ccc0604db2a016522;
          Thu, 21 Mar 2019 07:49:44 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 1/3] staging: wilc1000: Remove return variables in host_interface.c
Date: Thu, 21 Mar 2019 13:19:25 +0530
Message-Id: <20190321074927.2865-2-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
References: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variables in host_interface.c. Issue suggested with
Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/wilc1000/host_interface.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 56d8ed29fff9..2d30a144c97e 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1365,10 +1365,8 @@ int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
 	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 	wid.val = (u8 *)pmkid;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
-
-	return result;
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 }
 
 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
@@ -1601,10 +1599,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
 		i++;
 	}
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-				      i, wilc_get_vif_idx(vif));
-
-	return result;
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
+				    i, wilc_get_vif_idx(vif));
 }
 
 static void get_periodic_rssi(struct timer_list *t)
-- 
2.19.1


