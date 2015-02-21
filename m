X-GM-THRID: 1969702830080
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4dff6f9f1e12e8c3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.109.129 with SMTP id hs1mr3568338pdb.6.1424540689121;
        Sat, 21 Feb 2015 09:44:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.49.11 with SMTP id q11ls441069ign.15.canary; Sat, 21 Feb
 2015 09:44:48 -0800 (PST)
X-Received: by 10.66.66.108 with SMTP id e12mr3597206pat.30.1424540688874;
        Sat, 21 Feb 2015 09:44:48 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id nt14si1913793pab.2.2015.02.21.09.44.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 09:44:48 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so14991820pdj.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 09:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=xmzCoMm4iFIBm6mToiecWAyd67w5nBmvCWoTQ4LFJ5k=;
        b=pbL5dntXCTe3/hcOX/lBlnf7SHL6TwRaiRUKlDejkFvuHFhr1nigd67pmoFkivlBsF
         P+d4uHiSokpuP3ZTv3KRLqi2Hs7kHNwSTxQeea7NCsaiSdcmuH8YBv1Emv0OfWREWOVd
         sYHZ7PptxjrxzntS+me9NzS6ThgQaBF/C540Hv7nsFimjkjrv8ulHjE9TB3dt+5ACwB9
         z6KHB+cq7A9T9P6VmPLjw5fsICU2pe3HxGBDfkrahbmvFggQN4REuNGb9xGlLqryBVYL
         Bm5zuvpse472+z+PuLKm0qLdUP6OTC3zajXS0B3FVUpCd5dCfAsPUuALdFnubK6YcgLn
         Y5xg==
X-Received: by 10.66.65.234 with SMTP id a10mr6031108pat.120.1424540688788;
        Sat, 21 Feb 2015 09:44:48 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id qa1sm22900969pdb.84.2015.02.21.09.44.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 09:44:48 -0800 (PST)
Date: Sat, 21 Feb 2015 23:15:41 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: rtl8192u: Fix checkpatch.pl warnings in
 ieee80211_crypt.c
Message-ID: <cover.1424538520.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset clears checkpatch.pl warnings in ieee80211_crypt.c
such as:
convert printk to a preferable function like netdev_dbg or pr_dbg,
fix the comment line style warning, replace asm header files with
linux ones, fix the quoted string split across a line.

Navya Sri Nizamkari (4):
  staging: rtl8192u: Convert from printk into netdev_dbg or pr_dbg
  staging: rtl8192u: Clean-up comment line style
  staging: rtl8192u: Replace asm header files with linux ones.
  staging: rtl8192u: Fix quoted string split across lines

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
1.9.1


