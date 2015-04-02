X-GM-THRID: 10576027713536
X-Received: by 10.180.35.230 with SMTP id l6mr3279542wij.0.1427987774638;
        Thu, 02 Apr 2015 08:16:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.5 with SMTP id em5ls1166448wib.42.canary; Thu, 02 Apr
 2015 08:16:14 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr12379359wjb.0.1427987774344;
        Thu, 02 Apr 2015 08:16:14 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id c8si114579wiw.1.2015.04.02.08.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 08:16:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id a2so109031973wia.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 08:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AjKDIpzXijkpHblLdXx1t5yfFD6Jkw4/UQ65upzZdgc=;
        b=K1mUN9JfSqUqJ/KiJ3g2alFH1p9xCeOT4jJHN18bbLaLEPpn3N+XPn7537nW8gVVCL
         eNTk7GPktLM0UgGCbNtlcW5/TAb+KokYoLao4Bhc39v/uO1efgXb9qqz6ePggfJUt06I
         pNFMdUHMncrSImp5DgrcjuKVuM6RSFNELX8JqefNzJMKc0Li8HokC+iQpHLNYaW6Zh7O
         ZPtO7+pbjNhy1TSmQe990EELeiHqxEKn0NoZ9D+KqDb0fn2CK7o7Vsi1tIyYCy+6+47J
         pkYYp40GM3cantt6kh2m++xhJTlOYgY4rW0kAEmvdle9v1JZHJosf9Qg3JrZppYgyscQ
         V3/Q==
X-Received: by 10.180.99.65 with SMTP id eo1mr24897976wib.48.1427987774269;
        Thu, 02 Apr 2015 08:16:14 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.130])
        by mx.google.com with ESMTPSA id ka1sm7679519wjc.2.2015.04.02.08.16.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 08:16:13 -0700 (PDT)
Date: Thu, 2 Apr 2015 17:16:09 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] staging: lustre: include: replace macros by functions
Message-ID: <cover.1427987408.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace two macros with static inline functions that return values.
Inline functions are preferred because compilers are aware of them and
can optimize the calls. In addition, if macros are treated like
functions they can introduce bugs into the code.

Some minor fixes were done in patches 1 and 2 of the series. That
is why the patchset is resent.

Aya Mahfouz (3):
  staging: lustre: include: replace OBD_CHECK_DEV by obd_check_dev
  staging: lustre: include: replace OBD_CHECK_DEV_ACTIVE by
    obd_check_dev_active
  staging: lustre: include: remove unused macros

 drivers/staging/lustre/lustre/include/obd_class.h | 76 +++++++++++++++--------
 1 file changed, 50 insertions(+), 26 deletions(-)

-- 
2.1.0


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

