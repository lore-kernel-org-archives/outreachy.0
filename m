X-GM-THRID: 4672151617536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,af7486cf6e3ccc9f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.148.164 with SMTP id tt4mr12776063obb.30.1425055070922;
        Fri, 27 Feb 2015 08:37:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.1 with SMTP id fk1ls236417obb.47.gmail; Fri, 27 Feb
 2015 08:37:50 -0800 (PST)
X-Received: by 10.182.16.227 with SMTP id j3mr13630353obd.12.1425055070704;
        Fri, 27 Feb 2015 08:37:50 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ri9si552232pdb.1.2015.02.27.08.37.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 08:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so23901090pab.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 08:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oRo86DJqLq8tiziPrHlehwzRaCVAOWv3TTKptv7xN2A=;
        b=oSLf6O2IsmLRhWRwuY7FRU7DQZwwQwuDbtAQRNkxm9aFJDSg1wUK+9LERlclkrven4
         w+lvR1fjSUBDZNlnWr5Myknv4pravPGdnNoZhPEs71eCryyXDJY1/5857P+XRVdiOEwa
         MXOgqr5pR5jIHqaEtjRl6+JFaYOzLxauwOi7dDjsYs+Yxoha+rr5vw6uyGM1KDPNE7nT
         ZATVLP0935+VWD118y/rmTICdLYsCg+JerYcUO85fObd7cJzqlD1mawR7LzbY7JH9uyh
         8LROT5taLWuvP9uDQvKGtlmwAmp4sK8qFYtliJ05bQbGO9K3R/4KI9YpakmrtEZVD23A
         84UQ==
X-Received: by 10.70.24.164 with SMTP id v4mr12505762pdf.84.1425055070521;
        Fri, 27 Feb 2015 08:37:50 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id gv2sm4498138pbc.8.2015.02.27.08.37.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 08:37:50 -0800 (PST)
Date: Fri, 27 Feb 2015 22:09:00 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Improve code, codestyle in usb_ops_linux.c
Message-ID: <cover.1425054707.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset improves the code in usb_ops_linux by removing
the use of a variable, adds a blank line after declarations 
to improve code readability.

Navya Sri Nizamkari (2):
  staging: rtl8188eu: Compress two statements into one.
  staging: rtl8188eu: Add blank line after declarations

 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

-- 
1.9.1


