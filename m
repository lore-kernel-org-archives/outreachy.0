X-GM-THRID: 6203187246248493056
X-Received: by 10.66.249.100 with SMTP id yt4mr4846694pac.42.1444292079007;
        Thu, 08 Oct 2015 01:14:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.179 with SMTP id n48ls884811qgn.82.gmail; Thu, 08 Oct
 2015 01:14:38 -0700 (PDT)
X-Received: by 10.140.235.131 with SMTP id g125mr4867589qhc.4.1444292078334;
        Thu, 08 Oct 2015 01:14:38 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si5470943pbb.0.2015.10.08.01.14.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 01:14:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ve7so7131404pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 01:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=txTmddS3mdW40Obhb9Oms0Xje7PTEfF4FRa2my2TLtY=;
        b=QZvD5I4osR6dl08h7bZGtaqEYqDNc0oUVQ4A3GppsJComCcGFifW2Da0qQX56oWgB+
         lm8SsdopStvBsqkGb38fE8Muzrj5adf6iOJ2onZXCo7KG+h16QB0WDW7pb/4tTwjo2H6
         pa3I3pxMbQjYuOCD8WO/R5kRqLzzFMwE7Oohv4l7OzaBpinGBFkFzUYoqew+DhyU5wfc
         CzIaxuwp8AGor0uuis/cNQgrv+R0zNevPPRj4wwZSJFBGfMk9eZcrVGLr3glRf5Els3l
         h0/HuU+CRaFGZDhLYoDhGCi+siuncamfgtvCjO7J5vLxg96e1cTOtZq41inJHu22g/4Y
         bPFA==
X-Received: by 10.66.186.141 with SMTP id fk13mr6571784pac.7.1444292078159;
        Thu, 08 Oct 2015 01:14:38 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id xo2sm13751813pbb.48.2015.10.08.01.14.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 01:14:37 -0700 (PDT)
Date: Thu, 8 Oct 2015 01:14:36 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Where is IBMEBUS in makeconfig?
Message-ID: <20151008081436.GA31765@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Need to load this module but cannot find IBMEBUS dependency in
makeconfig.  Appreciate the help!

	config INFINIBAND_EHCA
		tristate "eHCA support"
		depends on IBMEBUS


alison


