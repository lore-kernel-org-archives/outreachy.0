X-GM-THRID: 1080518770688
X-Received: by 10.68.197.137 with SMTP id iu9mr8367914pbc.5.1424422115732;
        Fri, 20 Feb 2015 00:48:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.134 with SMTP id c6ls1009870qgd.21.gmail; Fri, 20 Feb
 2015 00:48:35 -0800 (PST)
X-Received: by 10.236.63.8 with SMTP id z8mr8410312yhc.15.1424422115535;
        Fri, 20 Feb 2015 00:48:35 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id bx1si2122015pdb.2.2015.02.20.00.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 00:48:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so6251390pdb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 00:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=I1YxvdyhPKtSCIXUD1oWRqTuB2wG8bbRjLEo/Uiujt8=;
        b=pCEksRAcB+qQ+cXsTR6zwuLkgCv9sQgtdzGM1uIHYokaeZG/L8Yi0DaOn0E8ay+IUO
         /D5kvnB5DFqPApJ6a3xwUGSmZreTiDWmsVVNmqgGnftsiL5hX/oLqo15hDpI5UzFKFfv
         PHYuYvwfUFePveRDvxmsYRguSL+GQVntkYOHYH36ICwi6BKbzjO7zhoOQIR0baKmcrGn
         8Ix9s+fFFxFi51Y4azfpyBFaBzyzWhwtF9o8feRqrYUZPujJiumKtIO69Xzf2KEFcDNJ
         /KS48bTZl7nhD2XIFfqhxU0/zEhcu/39vbHQTUyitL+/k/OA1MTwZt3B5tREISd+eFID
         SdvQ==
X-Received: by 10.70.101.165 with SMTP id fh5mr15436917pdb.16.1424422115391;
        Fri, 20 Feb 2015 00:48:35 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.6])
        by mx.google.com with ESMTPSA id jd10sm26096023pbd.23.2015.02.20.00.48.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 00:48:34 -0800 (PST)
Date: Fri, 20 Feb 2015 14:18:28 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 0/2] Staging: Use put_unaligned_le16
Message-ID: <cover.1424421580.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch series introduces the use of function 
put_unaligned_le16 as using byte ordering functions 
and then memcpy() is risky and prone to hide errors 
which are hard to track down. 

This change is done using Coccinelle.

Vaishali Thakkar (2):
  Staging: rtl8188eu: Use put_unaligned_le16
  Staging: rtl8723au: Use put_unaligned_le16

 drivers/staging/rtl8188eu/core/rtw_ap.c | 8 +++-----
 drivers/staging/rtl8723au/core/rtw_ap.c | 8 +++-----
 2 files changed, 6 insertions(+), 10 deletions(-)

-- 
1.9.1


