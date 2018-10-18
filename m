X-GM-THRID: 6613551654020055040
X-Received: by 2002:a0c:bd14:: with SMTP id m20mr24170793qvg.14.1539837488462;
        Wed, 17 Oct 2018 21:38:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:bfef:: with SMTP id u44ls11355900qvj.2.gmail; Wed, 17
 Oct 2018 21:38:07 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60nax+woTj9MIqSjA/lj+4mhQ5Wm3vLTOTLJ6ac7vLt6PsRWvtbpwAzgmDr4aw/DJ1KeSPs
X-Received: by 2002:a0c:d8f1:: with SMTP id w46mr24211495qvj.33.1539837487668;
        Wed, 17 Oct 2018 21:38:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539837487; cv=none;
        d=google.com; s=arc-20160816;
        b=cl1CNvPXfvjFrCTDRN5yIwVmR6E/lsN48phLFtvZMOLMyEMG4vBsr3YRj25pvkvZ8D
         s7J08Jelqon8P+NOzs9xZslgkM8HBvrVamLJ9H0hliHQdssmBWIwaHEh28dYKwZkVIxr
         xdyHsw5js8449egKq5X35HTbuuqOM7bmJwQktDJu98xugfS0G7BkA8Lr5jaPAxXHXqYD
         ajvWOcUU13CQtAexoXAxqAJlYasUQeIZ9E6SwMVOmc1K11Z0UmFVLhpzurb4LL4VmF8/
         zgfCJc33nEyImC4GtlbCdJWxDkx6Sg3mdI+zWPkR066CvzQrf5st9hZBBK4D59aLEEQZ
         Z0qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=3U4VLi0acrOVXDxN0CzPP57lL433b8SfbJwkcuvCOmM=;
        b=rMhd45eelz3rwOvFeeBygflQPbLh+NJyY72G71GXZn/VRSzM3+nZcFtSvgN5Uf7Oat
         aQj7Mp3UQia173DQNNJXLYRh1jnjgiRJ3HW4zmuAY1k7kQqw7tMAd2ktsZDj59aVfuDJ
         UcAKbsLU3pgX7x/VlS+W0sosqziUUs9U4myBHnNIBZm0ZRdQOvSLpaloxQpMFpu2NT19
         Jt3LpnJ96iZa4OINpQA4dK/Po2sXKwudxi1zbytrri/0ruycKXs45l0oDo2CobLuKI9J
         ZQftzk6rFIiRvu4vWI/7fiag4b1qBe9gltSrsKlMkwl3JhHlcxUBlBmCBqsfvNiusVm5
         AJkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OYyjOlWk;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 202-v6si730875qkd.4.2018.10.17.21.38.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 21:38:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OYyjOlWk;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id r9-v6so14258519pff.11
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Oct 2018 21:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3U4VLi0acrOVXDxN0CzPP57lL433b8SfbJwkcuvCOmM=;
        b=OYyjOlWkXD35ZEEadxegy6g7wOepFlz3Sym/JesUPnbl5acOprCrFbecwx3hxZNW8o
         Mb0/FairwK5qd7Ijs+p3KipP5mHpotq+2H7bVKUaFoeQwfWZ2LQARHAorIZbwZAe1vXu
         A09dDj0UPa+3ihz5NLDMfcwf1MA9h0WWivnCZoVJe33lcPqWLLVGY1zGgZDHpTGyK1Zc
         qKtQTZag9v32199QdhdiPMLQ39BYMrb0yULgYEi32brFNX0Hp162BtfrXavhbSK3unUY
         SUVnB/dEcK8sNTCl3YVjjRPgO4q/O17GORvHFfKRY1VEZ6onQeB6yegEECeX+98LyzrI
         5B+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3U4VLi0acrOVXDxN0CzPP57lL433b8SfbJwkcuvCOmM=;
        b=ROD3F8qHp0fde2gGXNHBwdOtRGLO0gmdIoyAhowGnyl8VMa4LYu+yh9vr3H5mtAX4y
         2EHW8iq397CEtiPb5rIYs31cZRz4KCDggYcQ60pV1VOUEz8cOlnEuH0PiSZNrFaf3dZx
         yo7Snb5snvJsnx3M9W8glvstAdhcd8XsWwn2HoOvkEThVi7Ag/xTEhRFS8qvJIeemGrF
         Xf98KBXsv85Gx+8uqc9/w4UzmDY9hgglNlc8WiA9OqmDIBl+zc7jcYEmKQMjgj6AyIL8
         1JYpVNxbLN40HzijTBa7yB9Y8agz9S1qvYCHMU4GdRH9dc+10yFqN+t0T5csqS+7GBw6
         hy5A==
X-Gm-Message-State: ABuFfohe0WEhf5iWB6xuzGd8QRwvio9vIJRurhAOlkYbvDQPBGiUxpdS
	4PVytxQvfG8/lSWFVn3o5+3zG1aQHrM=
X-Received: by 2002:a62:9c4a:: with SMTP id f71-v6mr29687177pfe.135.1539837487237;
        Wed, 17 Oct 2018 21:38:07 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id 126-v6sm4668517pff.105.2018.10.17.21.38.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 17 Oct 2018 21:38:06 -0700 (PDT)
Date: Wed, 17 Oct 2018 21:38:04 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Replace long int with long
Message-ID: <20181018043801.GA4248@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Replace long int with long as int is unnecessary. Issue found by
checkpatch.pl.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/wlan-ng/p80211conv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 91debcf20646..0ff5fda81b05 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -430,7 +430,7 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 			/* A bogus length ethfrm has been sent. */
 			/* Is someone trying an oflow attack? */
 			netdev_err(netdev, "DIXII frame too large (%ld > %d)\n",
-				   (long int)(payload_length -
+				   (long)(payload_length -
 				   sizeof(struct wlan_llc) -
 				   sizeof(struct wlan_snap)), netdev->mtu);
 			return 1;
-- 
2.17.1


