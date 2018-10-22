X-GM-THRID: 6614497774807285760
X-Received: by 2002:a17:906:28cf:: with SMTP id p15-v6mr909953ejd.11.1540236189825;
        Mon, 22 Oct 2018 12:23:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1b4d:: with SMTP id p13-v6ls313228ejg.5.gmail; Mon,
 22 Oct 2018 12:23:09 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61kVdv+BkY5LvP1HCzdkvhqcih2mFat0ihQrXVuvHWFmYHCvKo4DZCYI3ysmgB9Temgvz8z
X-Received: by 2002:a17:906:6ace:: with SMTP id q14-v6mr8202799ejs.7.1540236189097;
        Mon, 22 Oct 2018 12:23:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540236189; cv=none;
        d=google.com; s=arc-20160816;
        b=rSzWQOPTxIM/TQ7DezPk5WWHBNGED+QmaoDcXIICxhM2hG5xQR064KVr+t29zodgTH
         XGwbnOuItwytgWmyXiwKXcDq499laSQxQ6C9st3CS45nKsdEl/xchxOgY9ehlKwLCXr1
         uXRtM9LcFaGqVxLA64EJ32oklaVZAkV9BcCH686ZRyHPJOfv6tfQktxrgHzK8xAog3Kd
         t4D2XoAnHSxLrPpKDUE83fzptH+EQf6uqAcmFTmRTNHN9Jfczc7kNwtccTaRqqaWNrgA
         nHOFhuHfo4kMhwFPUwg93axjK05/3qvW5J6kPeIUCmJBMF1Q48NS+hhknf/I9hh4jXPJ
         AoTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:user-agent:message-id:references:cc:in-reply-to:from
         :to:content-transfer-encoding:mime-version;
        bh=eXJdCS9co52Pa1nmHcgE5YVDBiSPzT87ucZfostKWpM=;
        b=Y8Rmtv/m6IhKXt8Ag5dNLsgtJSoneoMz742IRiGGSnV66u5kYCWZdA8jgyrHHA2zD2
         Tc4MYKgB6RIGNId4kXZ4Mmav4fuG1qY5eQfHk1MFZz48Cck0H5js1oPvYTEVPxUzRrm8
         gkMQowrhU1m9KFWgPOxRp2ZlShQErpJhsA4X2fLd2IbdKr5eySGgNwz7qFLEc50xSoVt
         f6d/HLBdOJdbGv294Jj4UdvmrMziK6AjyrB995d/Dz3pgE4fPphzS3Gv1sYMTIl+jYOI
         GYRLaqIcTLkxArSHWq8/gBDGB2tPl+qm1I1iEouuBO+mKvCU8kwMX03f6i/sX/xKo7o+
         FWuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Return-Path: <chris@chris-wilson.co.uk>
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id y16-v6si1368650eds.0.2018.10.22.12.23.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 12:23:09 -0700 (PDT)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 14193036-1500050 
	for multiple; Mon, 22 Oct 2018 20:22:58 +0100
Return-Path: <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
To: Mamta Shukla <mamtashukla555@gmail.com>, outreachy-kernel@googlegroups.com
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20181020174926.GA32333@armorer>
Cc: airlied@linux.ie, daniel.vetter@ffwll.ch, sean@poorly.run,
 dri-devel@lists.freedesktop.org
References: <20181020174926.GA32333@armorer>
Message-ID: <154023617749.9962.9645598871319141504@skylake-alporthouse-com>
User-Agent: alot/0.6
Subject: Re: [PATCH DRM] drm: msm: Use DRM_DEV_* instead of dev_*
Date: Mon, 22 Oct 2018 20:22:57 +0100

Quoting Mamta Shukla (2018-10-20 18:49:26)
> Use DRM_DEV_INFO/ERROR/WARN instead of dev_info/err/debug to generate
> drm-formatted specific log messages so that it will be easy to
> differentiate in case of multiple instances of driver.

Do you not think this is a bit backwards? Both dev_* and DRM_DEV_*
include the device id so that multiple instances can be distinguished.
What DRM_DEV_* adds is the function name, which for user facing messages
should not be required given a self-encapsulating informative message.
-Chris

