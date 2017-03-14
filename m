X-GM-THRID: 6395629856318554112
X-Received: by 10.46.87.80 with SMTP id r16mr6059190ljd.12.1489493444126;
        Tue, 14 Mar 2017 05:10:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls1758798lja.26.gmail; Tue, 14 Mar 2017
 05:10:43 -0700 (PDT)
X-Received: by 10.46.87.27 with SMTP id l27mr6124680ljb.28.1489493442996;
        Tue, 14 Mar 2017 05:10:42 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id l138si1039174wmg.0.2017.03.14.05.10.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 05:10:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z63so14535257wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 05:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YseoLsCw79QTnoq0MbDEahtGKfLAh0LKrpqR4NZpcGQ=;
        b=qkFrMU1r+9xuNg1DwE3eEsZb0uehrfIXCASNx6aCOVWiqn12P97kNDXriL2NQm7Xo7
         zmtw3BfDllSi5bTeGeOQOVPW5erdScDs+sGE65iiIRx8qJkfUl24FXQYcnF9WZKTUER/
         xAfc9/Ctt10nHhhSiaJEQzBlhw9RzJDazJvZ+uCaOftK9c9dtNuJPKdMqE+rOT71N4mT
         OOkD6i1ayqQipENDYx1Rt497BdZoAqBptOHfh+dIQjgXyWHRU9TQ83ZJ2lMo8vAg6BCE
         7VbHCSwOroO3yivTEbbqregKW4yNErC/Xyf+ehu+jb8QSLvtS6lPOIosG6SNcRaFkIzu
         Zzbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YseoLsCw79QTnoq0MbDEahtGKfLAh0LKrpqR4NZpcGQ=;
        b=gkFbiB7BIlz3eLs8RiVKwdm6RKdHKWNUzTond0s3K55jJpxhqv0VIOu54rEQ0OsRyB
         fSMBw7MgnOt8fpvQIhQpA0O1GHlp693OEtenuiKfDHw6sMEYJZRCYAXW/nqKUZR9Vtca
         mG8Ih2wJZ/A9mHw67z3Db+HlVY/gitI6eCxWYI/sQEphGu0l3WiK3PDqY3Km9bcchlq4
         ARCqiiUa8vUvk1S5hSSpST4+3AopPOr7r9Kfh7pxqJYxYaUNe32v2ZJ+GpjTrUZF27Tg
         zCXUp+fIBryxVVZthr/0MoWdqukZgahQglZUXKefmAYfrRdAKZyJJnd7WN4ZMVgwwQR0
         B+Tg==
X-Gm-Message-State: AFeK/H1QydhcqQzMbLd1dNDw24jfb7trFZWP9SdfXDFSueFVG/Dzp6/xJyFywJOCiOOx2Q==
X-Received: by 10.28.8.147 with SMTP id 141mr15184278wmi.43.1489493442832;
        Tue, 14 Mar 2017 05:10:42 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:2816:d9d2:5dd8:da73])
        by smtp.gmail.com with ESMTPSA id w207sm15263418wmw.1.2017.03.14.05.10.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 05:10:41 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v4 0/3] staging: wilc1000: Improve code readability
Date: Tue, 14 Mar 2017 14:10:35 +0200
Message-Id: <20170314121038.22658-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Improve code readability in wilc_spi_read_int function
in wilc_spi.c file.

Tamara Diaconita (3):
  staging: wilc1000: Declare variables to top of function
  staging: wilc1000: Correct name of variables
  staging: wilc1000: Remove unnecessary brackets

 drivers/staging/wilc1000/wilc_spi.c | 51 ++++++++++++++++---------------------
 1 file changed, 22 insertions(+), 29 deletions(-)

--
I am going to wait to see these patches in the staging tree,
then resend additional patches for this driver. 

Changes since v2:
*Add driver name in the subject of the function.

Changes since v1:
*Change the patches order.
2.9.3


