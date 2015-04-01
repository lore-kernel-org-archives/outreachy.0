X-GM-THRID: 10576027713536
X-Received: by 10.180.73.137 with SMTP id l9mr22258wiv.5.1427904470127;
        Wed, 01 Apr 2015 09:07:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.130 with SMTP id v2ls79783lae.98.gmail; Wed, 01 Apr
 2015 09:07:49 -0700 (PDT)
X-Received: by 10.112.166.164 with SMTP id zh4mr7051247lbb.20.1427904469576;
        Wed, 01 Apr 2015 09:07:49 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bz6si1043111wib.3.2015.04.01.09.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 09:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id di4so50472569wid.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 09:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BIRzaxAJfXV3pwZZjHoV2/Pa/MdWRcfaORz89Jtwrw0=;
        b=BE0H7PORVeOrnhE5BaWF/rxuHUi+/XWNzgt7xiIWgBl7Td82sjcTHbXmYqMJ1n/iKl
         bXtq99AAWPjU3BN5sHNe33l/CR94P0FuhgELWlGjO+KHKBn8u6EogrTX2+2ksCfZIbKH
         GMmX8W/WsaG8TinN8Bln1X7OeNaHHzTW+J1vPHu/ap6eORlN5tIdobQrsQ5m4bHFsah6
         7ldJb83ux3QqttevzuXtvr+esCvwfUd9DCFPKXydOBKWKqFU1BLn1aH0w+y3mqMpcxXP
         fuTJPWfiJSysXzu5B9GRuRqSyDNO+xzVkpZXpKNYVVX1qV507MUNPwieQ9PGaP3JwcBB
         4KGA==
X-Received: by 10.180.207.76 with SMTP id lu12mr16416651wic.88.1427904469495;
        Wed, 01 Apr 2015 09:07:49 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id q10sm3293337wjr.41.2015.04.01.09.07.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 09:07:48 -0700 (PDT)
Date: Wed, 1 Apr 2015 18:07:42 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] staging: lustre: include: replace macros by functions
Message-ID: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
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

 drivers/staging/lustre/lustre/include/obd_class.h | 77 +++++++++++++++--------
 1 file changed, 50 insertions(+), 27 deletions(-)

-- 
2.1.0


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

