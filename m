X-GM-THRID: 6476395380653162496
X-Received: by 10.37.111.2 with SMTP id k2mr808375ybc.52.1507903305027;
        Fri, 13 Oct 2017 07:01:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.132.67 with SMTP id u64ls519630ywf.32.gmail; Fri, 13 Oct
 2017 07:01:44 -0700 (PDT)
X-Received: by 10.129.58.12 with SMTP id h12mr768554ywa.12.1507903304063;
        Fri, 13 Oct 2017 07:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507903304; cv=none;
        d=google.com; s=arc-20160816;
        b=gGC5/KeidfFn0OGgOvzlPJgShZevEQC70NNIVhVNFyrkwAHArdWnB8vcbKiOMIF3NG
         MpJjmSPnneRpY9XhR8EpoPEZH0nDbmsJcUql96YW+VghT3N05pDr3ZhHNtgMbYIhnK5V
         gQLr6EaWpihQx9S8Ly8dOrwdcxu/9yoKgn6/d2lyQymcYNdAbFA6bt1CCeOs0KEOhuqc
         t9BfIKw8XGPwGuKRyH2Qg8ADxgdBbrCuEf/sXlpq1TGy4vApyVuLyytJ6cqddXcW89yt
         jdoUJwsGq1l9VR63nksD8Pqp88dqAwtIbwsLYUejsyTJKvhmUHJULRibx9hHlnhwp7A6
         3LDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=WXPpcApgNWmlv9WVWi0z8VIpZIlzwqoABOfOPm+YVrg=;
        b=WyHoIkDqBgZNKOPz30jDWKvInMX1Q7rQE9I+mXYIcLzHMDWkMHwu12MCwFwMgntpE2
         Qs7zOTtIuzYSplf+bwec1NfpQpn1lcHtBLUkLzS8mDyMaWM7G5VhU7C0QbOruXEu6+na
         zvDEcfB9qwIicUFnVCISYKtMtP+GQf2u0TyHspxBycbdLxMEWLMAImzY6IKH+SCoERid
         N3Q/aytxfrzUMQdn4s0se2JRPAzQMvsJkmN9bn0e0XekDRjVM8xwVXCDW49SvHdKm0YC
         4wXlAdt8fu4Hta5cfLcCisetrtlfJhECxEcR4PLiyP0wQ7uz8n29c7VEggF05QQywudE
         IH6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=KAmSj96G;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::242 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id k5si54890ywe.1.2017.10.13.07.01.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:01:43 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c0b::242 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=KAmSj96G;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::242 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-it0-x242.google.com with SMTP id n195so11405774itg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 07:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=WXPpcApgNWmlv9WVWi0z8VIpZIlzwqoABOfOPm+YVrg=;
        b=KAmSj96GFEzr6O7+6D4xXfrqxqp7HmhcyGPdf1f+2h8ImA3zLytj7EjUGdP4NoiGpL
         bYsgJMBg82a7ifBa7zp1uYQkzro2ElADxayRZsrgWR+3/U1p2TYe/KtW/WIMExH4jOJp
         D8RS5pWDLKv2vVbmseUVL+QMjuPv5MfLAbkxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=WXPpcApgNWmlv9WVWi0z8VIpZIlzwqoABOfOPm+YVrg=;
        b=C6VN1dPq44RsraSRfLulpVj+g9MadNJwC60cXdlyDdumX/nhC2jdekqUKD2MavxrCm
         AHgjd0aT5A89sBuWRYFY1I0lioMOZvxPXJ6a/TxtLN3WyeXIeYjkQ7bQQ8N1caDCvOxO
         ej7IVL3j9PihBzQR+hs1JgSZA/47c5+vCt5UEw5nQcPExm17gaJ082KGrpM/BelEsMlE
         bbAB7ccc9AU9PAVuuNwwPxvE00vJpmN83vL7Pf0Foy6BscQ+kK866+HHxrz3hLzklTAd
         kwsfC4GgEJL+0AmLQn2C+5t05RgdZbBTSsvMy5r16nq9LOX2c9+wFujceMX+81xp+D3s
         Qb5w==
X-Gm-Message-State: AMCzsaViSrVmc3BR+mybJa/5KKNgRI+cBDOGNjFXiQArKj2O0oEB/yQW
	Sid3PB4SYL2umDavoq9KvoDcgV7yhokB6b0vKvxJKQ==
X-Google-Smtp-Source: AOwi7QBPshlV1VRqEM9UA2gtAQZYqH5A2qySwGxSkUkWE6roB811HrR07pRYBMgDsY3ON8ePZd+9qbb6JqscwWYldbU=
X-Received: by 10.36.107.132 with SMTP id v126mr1800468itc.43.1507903303658;
 Fri, 13 Oct 2017 07:01:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.40.5 with HTTP; Fri, 13 Oct 2017 07:01:43 -0700 (PDT)
X-Originating-IP: [2a02:168:5635:0:39d2:f87e:2033:9f6]
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 13 Oct 2017 16:01:43 +0200
Message-ID: <CAKMK7uFUQBkyD1J1B8Kk8pO2xxv8+=_puDS9R_CY-E3HruV_qQ@mail.gmail.com>
Subject: drm/gfx subsystem outreachy applicants
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, Haneen Mohammed <hamohammed.sa@gmail.com>, 
	Keerthi Reddy <keerthigd4990@gmail.com>, Harsha Sharma <harshasharmaiitr@gmail.com>, 
	Sean Paul <seanpaul@chromium.org>, Julia Lawall <julia.lawall@lip6.fr>, 
	Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

Hi all,

Sean and me looked a bit at state of outreachy patches/ideas. On that,
if your patch doesn't have review comments or isn't merged into the
drm-misc-next tree at

https://cgit.freedesktop.org/drm-misc

then please ping us, it might have gotten lost.

Since drm is a bit a build-your-own-internship deal, we need a few
things to accept a candidate:

- We need at least some patches for drm accepted. Currently Haneen and
Meghana qualify. Juliana/Keerthi/Harsha, if you want to apply for drm
pls get some (simple) patches in asap. Juliana, the debugfs work might
be a bit too much to get in in the final week, a simple patch like the
reference/unreference -> get/put conversion would be quicker I think.
Keerthi, similar about converting an entire driver to atomic, that's a
full internship.

- We need some rough plan for what you want to do. We can help you
with that and supply ideas, probably easiest is to brainstorm on irc.

- Finally, you need to be able to test your patches, which means
either a virtual driver, a Linux installation that runs a relevant drm
driver already, or some plan to procure the necessary hw before the
internship starts for real. For reasonable expensive we should be able
to sponsor this, either through companies involved in upstream gfx or
the X.org foundation, and most soc developer boards are rather
affordable. Please ping us. Meghana, your plan to work on tinydrm
would need to have this gap filled first.

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

