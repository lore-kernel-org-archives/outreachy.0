X-GM-THRID: 6948889025177452544
X-Received: by 2002:a02:9645:: with SMTP id c63mr10812555jai.84.1617914304014;
        Thu, 08 Apr 2021 13:38:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:78d:: with SMTP id q13ls237044ils.10.gmail; Thu, 08
 Apr 2021 13:38:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzh88mGXMo0fT/bffXZpIJDYhXj8mJnJB1Fe58lnuxuUdJVaphPWLrafFYVruneLUowYI3C
X-Received: by 2002:a92:c26e:: with SMTP id h14mr8222486ild.33.1617914303278;
        Thu, 08 Apr 2021 13:38:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617914303; cv=none;
        d=google.com; s=arc-20160816;
        b=0NxOGeMLWMbQBLX3G3h1UayfdfA4MZ8uVyQUIi1QTSuuzrA/5Y30eddgmBNJMx3C2K
         i7KUYqwhv66RpSiIzeTL4o9YWKT9BqjtBjUXmAwaA0j8EUMlwMLh6btxnrqt4uCR+Unc
         x6hwWwal4FdN+83pQO5+vdtfuVfnroTw268x/PUZS3GAcpGou9upFZ67HAfbBLFsahgh
         yiuAyi4uqlPwEEC3Qsmnuy9JTMG+4hluNXb0DItHi3LdT7hjRXGKJtci2l5e0iH5NB2G
         Yk8C6cepaCu5OYbNk7FXOzd6GO7nZKHnurrBX6tAKufD6FHtESL4iLBRwo56RTr3aw8x
         AMAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=zk2h9OUEkeXCZ1HjAVgUvuKrSyf0eKRwZjnK1zVYlOY=;
        b=o21GUP6iYRj56B3EQZVfwh44wQ79R6uy0XQKyH5ZpNMhiv1bTHccW0JjK46i3iVh2L
         C4VlRXG3XdyWtfUE+G2TBHZVD0zv/lO5SNQ1TF98i4DuyeARnyyOXMJBgzQiJUPAcmYc
         0yitt2kR9k7sa03Sw0LSBDKjjrn3xKzs6/hnM38wPGPgpwykD+uLh6QWveN7xydac+kU
         nVQKbU60v/cIVyxguhdjo0ZgMXP5zc9QrXcEwhO0RSCK122xOD7IZdvBtZdWefjkpSgc
         f4z3FSdISMYI9lzAt3sY8vqE7hOjhGcU9EOoxg2ONrM3LXPlmArHmJlMETWNsuQJWab3
         5GJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9vp1INp;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id x7si24931iow.2.2021.04.08.13.38.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 13:38:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9vp1INp;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x532.google.com with SMTP id g35so2216367pgg.9
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 13:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=zk2h9OUEkeXCZ1HjAVgUvuKrSyf0eKRwZjnK1zVYlOY=;
        b=j9vp1INpqRgcAVyQuSBKK92aYEkDbB18yrDakdH+SoIGf5sTjgfXICPQ8B9BekXBhm
         BQB9SpejECNfJc1VGUgJzCc38zZ0PKk7qp14uaYYyVlowycmVC3SznXbFcwcBogGH4Dm
         K6w6hGLCUBdaByPgPgMEPC9xPsGwPSb0QXIuCwGbajlTJ6chjAIx2ZxKcHXRJFC/lqNl
         6n56dwNQ2DSm0Fcbp0OcDJr4E/zDc1MTAJuifaitmJKtOIAMgDFpB81qc3TXiM08m6OW
         +xWY2BDew3vayMWVNyLWuY0ruJo4ikKgdqDfYTkQhz5uc4smWaPlcH3V+QPt3II6O7f0
         CiDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=zk2h9OUEkeXCZ1HjAVgUvuKrSyf0eKRwZjnK1zVYlOY=;
        b=cKSjszL1DjTKP8Ie6VdN5OERa39OmiBr/M53c0ggjEJCdhjb+Sl32e9IhTKYm2U/oV
         nYilpV2Xq1qhW27XYKeckfghVFFxx5AFQpo/CTKN73Et6xXP5HXaEboJY3At6IbZg+tD
         iXiT8Ja2EaubMQ03tZQ+3rB6QGIBsXmiarlteqSAqVbWBLB6MW0dhtgWo/54L+uR79Nw
         SBGC1uLnfxOPfu3IXkzPDOZFF9CeYcuvxrspxkzyUjhbdQBFqtFgBRFeOGrBNFM8En+d
         NbK5vY8At2nr7sXZrD879aSLn6Fdm94am9V0MoibYhL8iq1r8detq+KMBfwK8LCuvM0q
         pK3g==
X-Gm-Message-State: AOAM533EXiznXhxdPq+ZB86wgNfMGnrtn0Cv4JFRJPcuh9/2Cn6wCagZ
	s1qrtyygrnD8Vb70Pa8opp0=
X-Received: by 2002:a63:3189:: with SMTP id x131mr9652577pgx.430.1617914302551;
        Thu, 08 Apr 2021 13:38:22 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.11.236])
        by smtp.gmail.com with ESMTPSA id y17sm316669pfl.10.2021.04.08.13.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 13:38:22 -0700 (PDT)
Date: Fri, 9 Apr 2021 02:08:14 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 0/2] media: zoran: clean up style issues
Message-ID: <cover.1617912177.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

These patches make changes to clean up style issues
as identified by checkpatch

Mitali Borkar (2):
  media: zoran: add spaces around '<<'
  media: zoran: replace bit shifts by BIT() macro

 drivers/staging/media/zoran/zr36057.h | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

-- 
2.30.2


