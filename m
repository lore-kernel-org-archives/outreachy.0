X-GM-THRID: 10576027713536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8137d625aae364a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.93.203 with SMTP id cw11mr1856530lbb.0.1427997347975;
        Thu, 02 Apr 2015 10:55:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.163 with SMTP id r3ls253958laj.70.gmail; Thu, 02 Apr
 2015 10:55:47 -0700 (PDT)
X-Received: by 10.112.162.135 with SMTP id ya7mr10995667lbb.14.1427997347375;
        Thu, 02 Apr 2015 10:55:47 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id c8si139940wiw.1.2015.04.02.10.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 10:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id a20so92596257wgr.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 10:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=sNI6x1aPEtnO8UwbdLvBpMH6biNxp3Xyh7HNQAtozzs=;
        b=gtyWt3zrbIe6w25y6uWGcJSkCzjqCwYTTN60yIzPeM3bXNC3pr+7N6WtMWYR+h8xqk
         uV9sydBoFLUUmmQVjnhdWpD26Zo16W5tutd5kQgpNgnOB/OKLsQUOv0LrTgXQ8yfgVMe
         mXjZFXKm/GndJGBR7DC56NRO2klqXgsyWYOZAMjVFuznQyzTM82WkBkmxH7LbuLLa5rD
         JzdCKeD3F7y7wMY5OKVr+Bhk33Z89SerCpK71oKFL1b/KeEuIXVD4hhmw06dLkcpKjQM
         9b0OuzXlbDD7Kz+2A/rA4sorPmQfjH/bESM5/hwWghVPE4bNW7B0l5baSjZv3yXA+w2d
         sVng==
X-Received: by 10.180.8.69 with SMTP id p5mr26914121wia.69.1427997347292;
        Thu, 02 Apr 2015 10:55:47 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.208])
        by mx.google.com with ESMTPSA id ha10sm8206587wjc.37.2015.04.02.10.55.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 10:55:46 -0700 (PDT)
Date: Thu, 2 Apr 2015 19:55:42 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/3] staging: lustre: include: replace macros by functions
Message-ID: <cover.1427997204.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace two macros with static inline functions that return values.
Inline functions are preferred because compilers are aware of them and
can optimize the calls. In addition, if macros are treated like
functions they can introduce bugs into the code.

Some minor fixes were done in patches 1 and 2 of the series. That
is why the patchset is resend.

Aya Mahfouz (3):
  staging: lustre: include: replace OBD_CHECK_DEV by obd_check_dev
  staging: lustre: include: replace OBD_CHECK_DEV_ACTIVE by
    obd_check_dev_active
  staging: lustre: include: remove unused macros

 drivers/staging/lustre/lustre/include/obd_class.h | 74 +++++++++++++++--------
 1 file changed, 49 insertions(+), 25 deletions(-)

-- 
2.1.0


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

