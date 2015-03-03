X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr2697354wix.0.1425357993054;
        Mon, 02 Mar 2015 20:46:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.34 with SMTP id jt2ls683803wid.17.canary; Mon, 02 Mar
 2015 20:46:32 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr2646843wik.5.1425357992770;
        Mon, 02 Mar 2015 20:46:32 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id i8si24955wif.1.2015.03.02.20.46.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 20:46:32 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id u56so37435586wes.10
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 20:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+G5ZUqrPXPV5xt9FVmwCKye/8I/fLDbKgXOyj6I6yAg=;
        b=qRhSN25lL+dXJHR+Pg4yMNNdskrbwQJ9zWcjSTpFsSpaKwUMydwDTwI6hV2sONfz85
         MunTggW02zNxY/QLMGAISm/uaIilKTP5M03iCrWjrUHl2v9Wb2Eu8wwRTJWyaCtNm3DR
         jkUXJYzbML2KRbaR/yVyHj4Opal09mZwqAHm1F5oZgcxOUt7xLsEOKwtYmtHiu5zJRWg
         h/Xw0I4Pu6HKMEBuxoZZBNZnlXqHhUvIiVORLsRyykjCvgHMkD19RXwUjgYAZKqHfBIa
         LlHJsb3oUsI+hnGRKX/0StslucXwqjtVMIuPU2bBSYUvET6Y5Ml4EVM/qwQtUfL3nSMo
         mh7g==
X-Received: by 10.194.220.7 with SMTP id ps7mr66677997wjc.84.1425357992675;
        Mon, 02 Mar 2015 20:46:32 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.4])
        by mx.google.com with ESMTPSA id h11sm18770576wic.14.2015.03.02.20.46.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 20:46:32 -0800 (PST)
Date: Tue, 3 Mar 2015 06:46:29 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Adjust code in iio driver
Message-ID: <cover.1425356586.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Adds a check in two functions on the variable used to return values.
No labels were added, since this was the last thing to be done
before returning values. The check was made on values less than 
zero since sp_write returns negative error codes on failure.

There was a function call that did not pass the 80 characters limit but
the arguments were divided over three limit. The lines were compressed
into one line.

Aya Mahfouz (2):
  staging: iio: meter: add check on return variables
  staging: iio: meter: adjust function call to be in one line

 drivers/staging/iio/meter/ade7758_core.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

