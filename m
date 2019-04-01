X-GM-THRID: 6674267883353145344
X-Received: by 2002:a24:e1c3:: with SMTP id n186mr6488511ith.18.1554149458048;
        Mon, 01 Apr 2019 13:10:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ac6a:: with SMTP id m42ls209470iti.5.canary-gmail; Mon,
 01 Apr 2019 13:10:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy0b7wcycEDiq7GD5MHLj+nfMCiz/h1Nimr5I4NrkhGT+YYFcXwwrOLxoBr9qSQa0+wokVy
X-Received: by 2002:a24:73cb:: with SMTP id y194mr7225799itb.6.1554149457409;
        Mon, 01 Apr 2019 13:10:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554149457; cv=none;
        d=google.com; s=arc-20160816;
        b=z27KM3/GgWHmQXXGti7wYX6GgfhsX5qZ0+tfTcfHIRW7I3BHeiZrVEJ1luI7PQ3ybY
         S4pQDtJ5kWgD6+L0fKXZGovX2KiVIOxBtDWjIlT+VNbvgaWG6dHTA01nGs0mmPGnMjrG
         hU+QR5ff0pI0N84KmCvV3Av9HB9H3NOOb29b+qKbYaQ2x0iyRozfQcSK3AueL+4R8W1o
         Xq+n2XsvutiCf81NB+ZyYgDv/TDjp+Bqm98nbv4Tb1nZuIUAUN4XtwA8p1/JFmxMwlL5
         aVEnVNUsu1L7AICzRj3zOabtg6v27iz87ZM06cf2KULS3WjLEXGGaxraEZZblK5UXr8k
         y1EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=w4gSPXavLK8O5lrydyq67LMAmRbs2CSiiuqaQ8suB5U=;
        b=IEyb70VobGmu9B8hluVedYcZhT59/RQpvlcriKvQWCIj6dv5JGwQxeP0SIybJ3ok+3
         p6YVGcJGzzJmOpdeSUrDLlBjokgdIOYXanlJE5eA1j4FkU2oqq/EblZd36OD6z8FPrjV
         4HYvRwMtUd1f37lRSu8tqMVsl0lcApAmKVUsuuf/UO1Rnb0g7cv6cxBVb6ApJAYYy3xj
         Qxzfs6L3eiJSvOspxG+zkvcpNluNBPsCdDvgpsImmYBCEj41NDo0otyjqk13azO4tWdJ
         Xxbu5xtGoGHTY5OGcwO0+YNemruZe3XoI0QqDTMD7RPk3Zw2Trm4hVdJxaj9CJYCDq/h
         TNJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENHOclIG;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j2si544381iop.0.2019.04.01.13.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENHOclIG;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id g8so5323779pgf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 13:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=w4gSPXavLK8O5lrydyq67LMAmRbs2CSiiuqaQ8suB5U=;
        b=ENHOclIGK2isOuB2mqgvRT8485M2w4MNajRKEyzG+9ySQPyymWNR3nlYRaD4MbLiZJ
         Z3SkFtHJTGPa3GQZW2uM1zDhN18ZqnbCMJ2mxluUCUg8jHpEFNln/MlKFYmzT4PKnTsJ
         BmLjXIw5iZ30GFm/O8kcCpKPedlMHKNmzTfFfQM2Mz2DCvzg77yjahk+HRxBUlF/2LGR
         foO7dGBm0fGqvQpA2rA2q/G1/qzpretwd8IUL4NGNes5MSGbJhbiPn6GcPCVHPi0tPeY
         q9OvICCvI1BWjrgH/jFBSK+QnCweQ+aHE4/dRVMHAG9ILOBQsC7+yxq+1z0xoO3CDWkw
         BSuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=w4gSPXavLK8O5lrydyq67LMAmRbs2CSiiuqaQ8suB5U=;
        b=QdrWFTQ7BGB7x36fQIS9BPNN+9zt7pzcdk2vZZ92l6jJVYR4XUOTRp9/BO5rgHMaC3
         NPIOVFi5aCY03AWn/yLbTMZeltB0g6zD6fCCO6DebBGJr9LgXP5U4+HOpnF9N+uVVD7h
         /SfiyPyZMjB4ta5daxO9ikUhHUGUkSeLZl9EzPgPaRRKCW0YBPaSDNc6d123PymaTk31
         Kgw7PTN/Zv1P0oJJCj/5pgWLMbIh7IcGdyqMD0J1dZZJp7uPbBa2cnw30HId68uiJYDh
         nqf790gLx90Efc4yWOQwp/FEy2iVIrDPrOMm8dHephOMHLRIDz7qzNzOIXPe5htcnCgb
         J5Lg==
X-Gm-Message-State: APjAAAWnw8OXO+DRUINxGJc/RdgUhosawBkPNi0sV+wcAJR8mS56YYUR
	/MNG0YmWgrn2mPPWSqWQk3M=
X-Received: by 2002:a63:6786:: with SMTP id b128mr53302315pgc.318.1554149457026;
        Mon, 01 Apr 2019 13:10:57 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id t22sm13540004pgu.45.2019.04.01.13.10.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:56 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 6/6] staging: rtl8712: use list_entry in function r8712_select_and_join_from_scan
Date: Tue,  2 Apr 2019 01:39:55 +0530
Message-Id: <20190401200955.98744-7-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190401200955.98744-1-himadri18.07@gmail.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>

struct wlan_network contains field list of type list_head. Hence,
getting the address of wlan_network using list_entry is equivalent
of using container_of to do the same. And to use list_entry for list
manipulations is a better choice.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V4:
	- Change log message
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 1a15c45aa83b..164422b3ac07 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1117,8 +1117,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 			}
 			return _FAIL;
 		}
-		pnetwork = container_of(pmlmepriv->pscanned,
-					struct wlan_network, list);
+		pnetwork = list_entry(pmlmepriv->pscanned,
+				      struct wlan_network, list);
 		if (pnetwork == NULL)
 			return _FAIL;
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
-- 
2.17.1


