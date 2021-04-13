X-GM-THRID: 6950478192224239616
X-Received: by 2002:a05:6638:ecf:: with SMTP id q15mr1604697jas.129.1618284328778;
        Mon, 12 Apr 2021 20:25:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a38d:: with SMTP id y13ls2477671jak.1.gmail; Mon, 12 Apr
 2021 20:25:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyuTwCe/1fj0WrNYRcePEfKm1WF/EsxgVEfl56pB5BHKHdccyhYUdjFgfm0yzQbJ4tgOnCN
X-Received: by 2002:a05:6638:1496:: with SMTP id j22mr6999289jak.23.1618284328046;
        Mon, 12 Apr 2021 20:25:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618284328; cv=none;
        d=google.com; s=arc-20160816;
        b=NqhA6ZYyYRP7x/v4E0GncuJPwJ0XdM/XoSN56H5iGbuKORyG0OJbd85zwMRArdMhbi
         XOZ8blApMWnJ2odFR/i6oQSzAtzWWPRJuKvlXW8hGNfERgI7mBF4a1Jio0+np6uEk3Ei
         ii+XtkU8B57UkaztpSw435ytc7CIVYu0hxr8AuFNjPPIOHoL09+QKPmM3IIqnUcZAqGW
         0+X3wBc7YNokr0CLABbUeORsvSlWKewmTH5pyLSt8DECyENOAZgd5JUsi8nNBDOMTQ6c
         n2FzntMe4IC1H+8jOXG3OvgTysNOE/yufNVdm6BZNpL/vnWdpi0Pv6JdnS6gPoZv0aEp
         Wqow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Pb7k5gcwx2hPb9DsQiJub5fjyYCpgcCw0SGHu/Bvicc=;
        b=TXYYkaaDGvURPgSA9STY8VV7gunHuMbdbz6wdlpPBO2z5OUzSE76ZU3KxuRgqoPhsQ
         po4A/g5kI/iCjPqPTEYsKAKzhJa/8EJW7dwTilJvP+p9t7/mXNOj3KcuYS/R8VewUxX4
         7IWlOdB/mjTAUHg0gCFsuQunnuteEECMYrMiPPmflRZQ1HOoLWnmnSPmVfX9/Yn2hJq3
         ZFycDPxW0CMukIVnLsfKQVDpyY6OvXhpZpFNPdVx4jHWzcByS/c3Yh3QZzqg8Aw9u2cm
         ZAmYTvp5eBnVJdr/lQmTcy5DzkhbQLANoOSbS4eyNCok3zlO0SNpBmjL8Z2S7Anwq2XC
         Z9Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eyLGoPCX;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id r15si790860ill.3.2021.04.12.20.25.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 20:25:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eyLGoPCX;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1032.google.com with SMTP id u14-20020a17090a1f0eb029014e38011b09so3433331pja.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 20:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Pb7k5gcwx2hPb9DsQiJub5fjyYCpgcCw0SGHu/Bvicc=;
        b=eyLGoPCXFnG89ajHudvpOQd5GhZxWcC0Q9dKKfYJPAoqSep4Fe8iYcPs5vP/ZsRIKO
         px/ioy62DAQ8QXrZmr5/2A/ctwuMjA11Nrzybl0vxaRtBGyKpFBInXY/U/MU4CZG4eJE
         fsjAuu2HnocgIhyg89ojgybwY6qQHmB6x5wDZA5lGgsUjA7levkx2phhjns2LP28adyH
         qSTTgQQnTwdADfFFcD/ukie1AWbNYyLT7mMHBwthoSG42Xyqg4Yzd06NajkkWgHU+XO/
         0obGieEXj5aDPnMX+HwSv/lvBVIoENudyoI0+94GqlvF/+rcZaHxvsHZlVeIWHZu0vTA
         BetQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Pb7k5gcwx2hPb9DsQiJub5fjyYCpgcCw0SGHu/Bvicc=;
        b=XwB0rRcB+qat/R3HRbXgIV+54Whwiuj79gKwUsRYg56+dQa60kVGk44OzlrKzPG/4i
         +BW3eN6BAZK/fMGNwuLS7He5htIFNssFv+EF5dvpEwv4nVSn49zZ4Svz0jd6sFBko/Od
         vUH3K7ozMsO2ck57x5tfH4GBetmDVNJPoDMMpXvzsK2R0iNsxhkVGexKGxlu7ekT3KKw
         lKp5zXLA3qX9BwpmD4DegqQV+uViucQRgzKuxj/G9p7kIbf1vMOZOk/OGdart8dszLqN
         J/BuLuVQsT0MoGxK9BXs9MI+wFRvRB4kWAqQqETOlmP7RBuWufLl8xTW5fecprr5lysP
         RgSQ==
X-Gm-Message-State: AOAM531EXwO7COXeHNL8kEJcbUiojWfC6w4+1VnpzIk6MfDihInz5m1r
	CTxh5k39bsEgDg4BbL4sn0s=
X-Received: by 2002:a17:90a:af87:: with SMTP id w7mr2496370pjq.187.1618284327677;
        Mon, 12 Apr 2021 20:25:27 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id e65sm11549793pfe.9.2021.04.12.20.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 20:25:27 -0700 (PDT)
Date: Tue, 13 Apr 2021 08:55:21 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v5 1/3] staging: rtl8192e: remove parentheses around boolean
 expression
Message-ID: <596aa7e6d4e8ce80eaa98519001e17cf9d370f45.1618283232.git.mitaliborkar810@gmail.com>
References: <cover.1618283232.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618283232.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses around '!xyz' boolean expression as '!'
has higher precedance than '||'

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v4:- No changes.
Changes from v3:- No changes.
Changes from v2:- Modified subject description. Changes has been made in
v3.
Changes from v1:- Removed unnecessary parentheses around boolean
expression. Changes has been made in v2.
 
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index b1fa8e9a4f28..431202927036 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 	struct rt_hi_throughput *pHT = ieee->pHTInfo;
 	struct ht_capab_ele *pCapELE = NULL;
 
-	if ((!posHTCap) || (!pHT)) {
+	if (!posHTCap || !pHT) {
 		netdev_warn(ieee->dev,
 			    "%s(): posHTCap and pHTInfo are null\n", __func__);
 		return;
-- 
2.30.2


