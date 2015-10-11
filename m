X-GM-THRID: 6204433488482926592
X-Received: by 10.140.238.83 with SMTP id j80mr20416701qhc.2.1444582242813;
        Sun, 11 Oct 2015 09:50:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.202 with SMTP id 68ls2896373qgx.97.gmail; Sun, 11 Oct
 2015 09:50:42 -0700 (PDT)
X-Received: by 10.129.159.71 with SMTP id w68mr19696071ywg.28.1444582242350;
        Sun, 11 Oct 2015 09:50:42 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id uv4si1379264pac.0.2015.10.11.09.50.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:50:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ex6so4038445pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 09:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QbFoxOVKuQpLpEj5Fg73UBnXr9Lt6KjnRpjSqRpLT3w=;
        b=Pt+Am2Wq5Ci/oP406CWxNOppMa8AgYBNls1Rs8AiN+8hf9YkflZ8YnKLKj38czu8mK
         zmoT7vYzd7JcfAqk7zxXn8Ia+z1LPIVd4TG/Q1DAz5YAUgs/KpTK2ovWRi1mO05sDbad
         VmCgrHY15PiIwZqJlTTdWfnOt/D6S6Be4M8K7XVSMCBLqOIqfA0sxpLsf35HRNaKimJI
         RXfxeHQSqJj/+RAAsmtekzOI+zccZHVMQJ8yDgEpj6wCZ2c/y5zTja1tujFtrisE2Iul
         indXzdDDgpkrkpUdomd9I4B9sngxe3viYYqhWhMC3DKQ1MjHgflro9f9LYCcORRxGt0I
         x2Ng==
X-Received: by 10.68.204.37 with SMTP id kv5mr29313073pbc.64.1444582242207;
        Sun, 11 Oct 2015 09:50:42 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id rz9sm13550472pbb.61.2015.10.11.09.50.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:50:41 -0700 (PDT)
Date: Sun, 11 Oct 2015 22:20:28 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Fix checkpatch warnings
Message-ID: <cover.1444581984.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes the warnings about character limit and unnecessary code.
After applying this patch, the file shows less warnings when checked against
checkpatch script.

Shivani Bhardwaj (2):
  Staging: vt6655: mac: Remove character limit warning
  Staging: vt6655: mac: Remove unnecessary braces

 drivers/staging/vt6655/mac.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

-- 
2.1.0


