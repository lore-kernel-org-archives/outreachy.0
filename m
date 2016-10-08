X-GM-THRID: 6339198509829324800
X-Received: by 10.129.71.85 with SMTP id u82mr3420435ywa.134.1475959669691;
        Sat, 08 Oct 2016 13:47:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.22.69 with SMTP id 66ls2627292iow.31.gmail; Sat, 08 Oct
 2016 13:47:45 -0700 (PDT)
X-Received: by 10.107.11.65 with SMTP id v62mr4969935ioi.15.1475959665653;
        Sat, 08 Oct 2016 13:47:45 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si6783986pab.2.2016.10.08.13.47.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 13:47:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so3239761pfz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 13:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=04kgTqHbhTxtM14GXUukNOtxJIcXoPP2M3AexX+5HxU=;
        b=NWrw4sYGuCevEc//U6+s+FhgN56jxrg/KGaTxA4aEc/QMRjDGmIq7Hqyqs+eitdA2/
         INbIPIfOsTxrabK5dbEhoY9P5qNMJ+mzIPfTnwhH5ruM+v8QFrmH8AZWcSfiWtngpjaG
         tvdr9bM4A/0CiVxj+DQhSgw5i8B4WZ+q5+0Hs8okPQ6xQFRG3tf0X7pds55z144Ieb7X
         G0a8mn8ZgmcndotQ42eaKieDP1Pd10+t09wxs7omGxGGLB+QLl9Dl8LBUDQT3kWogwTP
         hHhnwDISEcRsVcX2Zi7ifWNsJjvqJ1upiqkBCTchgiTyW3e2FDVioDsxqfw2ZYZQtyu2
         ruXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=04kgTqHbhTxtM14GXUukNOtxJIcXoPP2M3AexX+5HxU=;
        b=QCrxLcCKs1OojOxvTyk0OBW17WEgYDVvZUW5LtgD5zgApt5OXao5Uz2vPBKKQcAC0b
         Cm8Ye9nuNP+LvsPGlFjFyqXH12ifv4lAnR7cV2l3Qyq7MhIZnQzUFynGVymyQwm/i3p+
         Ql6IoViwW3agMjDHAxPeNIFmGWMkaJbX7kvtSvvHDoNbBTpvvKbdc1xHRfL5y1ibl/hP
         IhYsi3Ww0wg2PK05YxMncdgrC2wkzuvO5xF7ofz73r0Lc0xG1mH+xkcQeYeFffbKGnxE
         hy4E3utb29TGn5FKFNUbTkXcV4/n/rThjs7+lOiAWT9r7WSY47nHZOGCpFAOzpWCUU1B
         QkTA==
X-Gm-Message-State: AA6/9RlnQvWydJLa6HenbRBxwlLCY02UrBFRP/5UgKBcRDAjhKxAJcFM4/jnbL2F3H7Tog==
X-Received: by 10.98.157.210 with SMTP id a79mr41449516pfk.179.1475959665475;
        Sat, 08 Oct 2016 13:47:45 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id s82sm4045045pfg.56.2016.10.08.13.47.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 13:47:44 -0700 (PDT)
Date: Sat, 8 Oct 2016 17:47:41 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 0/4] rtl8188eu: rtw_led.c cleanup
Message-ID: <20161008204741.GA8199@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patchset corrects the following checkpatch issues related to 
coding style in rtw_led.c file:

   - Unecessary parenthesis
   - Lines over 80 characters
   - Extra blank lines
   - Tabstop alignment

Juliana Rodrigues (4):
  staging: rtl8188eu: core: removes unecessary parenthesis
  staging: rtl8188eu: core: formats long lines and comment blocks
  staging: rtl8188eu: core: removes extra blank lines
  staging: rtl8188eu: core: fixes tabstop alignment

 drivers/staging/rtl8188eu/core/rtw_led.c | 133 +++++++++++++++++--------------
 1 file changed, 74 insertions(+), 59 deletions(-)

-- 
2.10.0


