X-GM-THRID: 1080518770688
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,86373d2d23fa4d80,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.210.227 with SMTP id mx3mr7865785obc.27.1424403057214;
        Thu, 19 Feb 2015 19:30:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.167 with SMTP id jh7ls48043igb.36.gmail; Thu, 19 Feb
 2015 19:30:56 -0800 (PST)
X-Received: by 10.42.240.132 with SMTP id la4mr8506951icb.15.1424403056843;
        Thu, 19 Feb 2015 19:30:56 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id pc4si3133414pac.0.2015.02.19.19.30.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 19:30:56 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so4610146pdb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 19:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8xOsOOA58QKyivhKEl1mH7I5NpGvYF0W2e5y87hbHBg=;
        b=FWFAe4I3Ml2d+mX56x42ZWPgLyF1U3JFimRs6zHV92x3Wex20ggWns8WAnhuKUyRI9
         QDHYYqtlOToCkPQXLOzv6kdzzN9/N4Dtt/7n0DedzKuhqk6SDZfwl9RPj6VHb8t93A0j
         IvjdwaDSgiLpQaXE12QAElhNDkNYb8Xrtdo4dzigv2kfMImowQOa9fcaGM6AnGrV+zda
         lU4lPwc9qzqT8pwymcMBn2HUGEob7m+nrfCF8XvqndwdoR6TAyJspdBuB1IepT63qBr1
         f1ReTQsrJY9YZ8/hms+1ooiUib3wSCjUFOv0dlzOaNO6Z6zaburWKaaQateE4YOx+eHO
         Z5gg==
X-Received: by 10.66.218.10 with SMTP id pc10mr13135718pac.116.1424403056733;
        Thu, 19 Feb 2015 19:30:56 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.68])
        by mx.google.com with ESMTPSA id oq4sm11298058pdb.73.2015.02.19.19.30.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 19:30:55 -0800 (PST)
Date: Fri, 20 Feb 2015 09:00:49 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Staging: Use put_unaligned_le16
Message-ID: <cover.1424402536.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch series introduces the use of function
put_unaligned_le16 as Using byte ordering functions
and then memcpy() is risky and prone to hide errors
which are hard to track down.

This change is done using Coccinelle.

Changes in v3:
	-Two separate patches are merged in a patch series 

Vaishali Thakkar (2):
  Staging: rtl8188eu: Use put_unaligned_le16
  Staging: rtl8723au: Use put_unaligned_le16

 drivers/staging/rtl8188eu/core/rtw_ap.c | 8 +++-----
 drivers/staging/rtl8723au/core/rtw_ap.c | 8 +++-----
 2 files changed, 6 insertions(+), 10 deletions(-)

-- 
1.9.1


