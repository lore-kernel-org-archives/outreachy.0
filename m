X-GM-THRID: 10576027713536
X-Received: by 10.180.90.175 with SMTP id bx15mr1920112wib.3.1427896681541;
        Wed, 01 Apr 2015 06:58:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.2 with SMTP id v2ls531478wix.18.canary; Wed, 01 Apr
 2015 06:58:01 -0700 (PDT)
X-Received: by 10.180.97.200 with SMTP id ec8mr1933961wib.5.1427896681205;
        Wed, 01 Apr 2015 06:58:01 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id bz6si1018924wib.3.2015.04.01.06.58.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 06:58:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id e14so54134616wgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 06:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Er0y/cawTYVvblLkTLfq4nMpvUxzD7+CG2XIImyYBpk=;
        b=H46j2iBvsWK99oQhm+ridOX9dLTzGtpi57uTqIBVNkrw5x8qXKb6h3Kf+5CgbcHepw
         bpeka2gcGSJkrLS5fSDNkEOVPOkG57HyxYgSiupudI3uydLKZwJ2DjM5F/fwajVcui6j
         vZK1etfp0EWMnC6ccvDzCiB3mmo8yZdrfFUydQRM18+X3A1JyOJCLFDzJkL0wH9Alari
         a2qNdx6OwLt+hdyO4I3/W8RhMl7NHGHaJAEba1m1RWnH4Fc4KUG7C8iaFyySznEBnF7M
         MNua9Xmpsymq6+DjwH3ZMWJgq1tEgrDYhCn2ExufeaCqPQitWN4Smk8NAZrAPDHNpKVN
         JVOA==
X-Received: by 10.180.23.106 with SMTP id l10mr15719624wif.54.1427896681112;
        Wed, 01 Apr 2015 06:58:01 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id k6sm25614445wia.6.2015.04.01.06.57.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 06:57:59 -0700 (PDT)
Date: Wed, 1 Apr 2015 15:57:53 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: lustre: include: replace macros by functions
Message-ID: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace two macros with static inline functions that return values.
Inline functions are preferred because compilers are aware of them and
can optimize the calls. In addition, if macros are treated like
functions they can introduce bugs into the code.

Aya Mahfouz (3):
  staging: lustre: include: replace OBD_CHECK_DEV by obd_check_dev
  staging: lustre: include: replace OBD_CHECK_DEV_ACTIVE by
    obd_check_dev_active
  staging: lustre: include: remove unused macros

 drivers/staging/lustre/lustre/include/obd_class.h | 77 +++++++++++++++--------
 1 file changed, 50 insertions(+), 27 deletions(-)

-- 
2.1.0


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

