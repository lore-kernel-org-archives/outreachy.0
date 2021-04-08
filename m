X-GM-THRID: 6948700002249080832
X-Received: by 2002:a63:f303:: with SMTP id l3mr7125034pgh.263.1617870294418;
        Thu, 08 Apr 2021 01:24:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls2128116pgh.4.gmail; Thu, 08 Apr
 2021 01:24:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw2rVQrXW0IeznLAx1Oc6dGCCM8s0Dtfp0G0cKim9tVOwmDkI83fMP9Qb/6kIuFv9sa2+Cu
X-Received: by 2002:aa7:99cb:0:b029:245:1b7c:7982 with SMTP id v11-20020aa799cb0000b02902451b7c7982mr760547pfi.23.1617870293441;
        Thu, 08 Apr 2021 01:24:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617870293; cv=none;
        d=google.com; s=arc-20160816;
        b=DlIqKoIHdq/4JoNojgwy4uHgXKDco3aed9JViV6/eFV6Ai7eS9Q0RyPxqItbsp9b2M
         9BcId/P7JOi7m46GShyUCz6PuZ+veYE0Rj76GcyhK2Ku6MIgFjGhyg6z43JkLT24CNCY
         SWMUJS1aLTT9y2sSvhtzUmFidnJnzIsJpCS/2RptURA61eQWEhyRza8ujVjrzPAth7fF
         Lfx+HnUz7n9+r3PTmaaFjHc03b6yd7cuoM+hwmRdBO0u90gPczJ+JDZg7oRvwwrLXbXi
         Ww5HQxP2yOw0kFJWYS0kjbZTLBuDyHseSRtV2vlv07LQSvK0Mwj9PKiBXRvu8UjKT9Gr
         D4DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=lqMgkJQYoqUfp1WF2Os45zue5ybF7IcJCuRBI7bg4uQ=;
        b=OM4w22ltb+/FM3PCGVYHLRsLGyeBmI2rvwTJaIQ6LtrzBO8vO6bNb4WImkTTrdrO4B
         08XSqMUR5fiYT03ckiPJqNupbQScKnsPfbagVjfb3TTkGun1UVKEQV90tPsNaKsdakjL
         tAxsTURWLDr+MJCQdxUEAmTCXNDI7NghK6vZ/dsCBIupWmwYLQ3l28d7IWOsAHFciAE/
         iiLS1jUCXmdiyg7ln/ZHLWOy8woHYxib6kMZfOvDVdtMlc9ao6DQ4SQTyZ6blo5G6ei6
         g3Bl1VDKnbXyvsnOa3cSlJq0LdEti8wr0dPOPPt9iCzARsDm3qRfTFn3wwNxcphL37ro
         wjLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SZEDIXir;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id w16si677318pjq.3.2021.04.08.01.24.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 01:24:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SZEDIXir;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x635.google.com with SMTP id g10so633750plt.8
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 01:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=lqMgkJQYoqUfp1WF2Os45zue5ybF7IcJCuRBI7bg4uQ=;
        b=SZEDIXirS114Eb5GuJte8T+YJ1JDlEOJA+5LURSp3329dYgjNRwKOFe8hpzPorkHsd
         6/fBAaKNwmmiZQ5FU41qlajiInFScWcb3dRvNPSFbwFAfWNI5WIwuBAeAGjdyOyoptYp
         TgwJpZXSTRbzepwiPB3qsQ2cRhHLsX4YkKBF7aL2yvxwPYYYmcBWqd8/lodjLuwRny2g
         tJBmGxe268XgBB04t4BTB+mzBx8xSJINkYBdk5w7r6hr2SrfOOxCfdL0vMEBEFZnmmOh
         ckOV8W8Rp85n7F4fCleVO6ZnKUHzSVhJH0RFtojqfYBbqlGTm8SPYUM7cjj7LsTgiFWV
         PjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=lqMgkJQYoqUfp1WF2Os45zue5ybF7IcJCuRBI7bg4uQ=;
        b=ISwC2d2L2DgQAZQ1b3DUYb/tMWifgrUHHjftfTgq440pmgX3JnmlKTcDvDUOiG6vne
         LBSFgd9sNfxyIJKXidC6EenbA94auw1YX+KjxFAuqrsLW/x4nmxNShqgXmIkI8W9Kxp3
         J96CzCHEYMtS6HFTq2SwvJ5sY0xKUYxiyN3uzhE9wbZ8RClt1/xWf6+Fc7y8OLyMZFBD
         juafJ5PKO+T/JXqpUkZHC6PDkVvFrlczoz8+A6zgGhWDLJ3sT7elmvgq/Ha/sTRoCWTi
         AYTGKyoUQgavrdHUhop5C5NKwklDrTZSYVFrJDAk3npJeVK1v6n2SkyB5e95ZxGUyMrc
         eMWQ==
X-Gm-Message-State: AOAM531K4DgJYJ+rZLhpBYDFROZ+8yIJgdIguHj+sghRQCEqYOFLz+2U
	BNlTBXkEIlZB+hT12UfCWig=
X-Received: by 2002:a17:902:d645:b029:e8:ec90:d097 with SMTP id y5-20020a170902d645b02900e8ec90d097mr6680046plh.47.1617870293084;
        Thu, 08 Apr 2021 01:24:53 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.40.190])
        by smtp.gmail.com with ESMTPSA id 205sm24424032pfc.201.2021.04.08.01.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 01:24:52 -0700 (PDT)
Date: Thu, 8 Apr 2021 13:54:49 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: rtl8712: added spaces around '+'
Message-ID: <YG690ZIRdCEcjoM6@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Clean up Check:spaces preferred around that '+' (ctx:VxV)
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8712/wlan_bssdef.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/wlan_bssdef.h b/drivers/staging/rtl8712/wlan_bssdef.h
index b54ccaacc527..ec3749813728 100644
--- a/drivers/staging/rtl8712/wlan_bssdef.h
+++ b/drivers/staging/rtl8712/wlan_bssdef.h
@@ -176,7 +176,7 @@ struct NDIS_802_11_WEP {
 #define MIC_CHECK_TIME	60000000
 
 #ifndef Ndis802_11APMode
-#define Ndis802_11APMode (Ndis802_11InfrastructureMax+1)
+#define Ndis802_11APMode (Ndis802_11InfrastructureMax + 1)
 #endif
 
 struct	wlan_network {
-- 
2.30.2


