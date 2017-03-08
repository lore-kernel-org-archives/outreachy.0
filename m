X-GM-THRID: 6394514785010974720
X-Received: by 10.129.177.130 with SMTP id p124mr1641491ywh.124.1488932795011;
        Tue, 07 Mar 2017 16:26:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls2154521otj.6.gmail; Tue, 07 Mar
 2017 16:26:34 -0800 (PST)
X-Received: by 10.13.227.134 with SMTP id m128mr1486827ywe.102.1488932794482;
        Tue, 07 Mar 2017 16:26:34 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id i189si1007325iti.0.2017.03.07.16.26.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 16:26:34 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id f203so2390739itf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 16:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=s6mfFJbfKfqtU/ujBiQEgKCA9v3otYbE0E0TTucil0w=;
        b=DT4X7tP51yrPCljm5xT17G+i5OwUhUUp+/ZAMWnpJf/L/G8a3yFURXFYrzge2vwHK6
         hkVqBaqyE36VrC7HMm+tyuhStbVhfBajBtErSz6zqNEd0y9VecuwCujPWeyxHYdTFnt/
         gARO9wsrrcACsV8MujHcJ3eNnCvmKNBKVQnrPSzgjFxy/dyrpSNCEBwk4FyxFXPeZRil
         Tgfs7TJND3yzyTJmSQCu3QgjGHqfkjxJJj8gEneiwubA5morEJheI5/AG1+7vy9Hi3RY
         x4FUTf8LW8sf6uilAlqqcH35FKjBrfhgFyQNct4tmUU11GZOo0lyF2oeUovfHxovCnYC
         zjgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=s6mfFJbfKfqtU/ujBiQEgKCA9v3otYbE0E0TTucil0w=;
        b=YeYumTP4/FiMAm8crdU7CewWn8o7EMMH0X14knjuzGCBRZIpKsbmfh+oJL07vGulAx
         izc1NjV/oSiAACqs/hzOYhV5x1mgS/sPlxC3bsJvbTQFsl7qF/9mNe1Ngdeqs5iJBGlo
         GLW6MyAcbeKkEF4a7hgzS8Ljdp+8py2x/xEWnTd4c9PTyJ8DB8TO+iDMA7tX6s4J/tCk
         5C0rnMQKoujd/cUuFPh1N2CRcdxSwJ8kQcua4ru96FdZL3lyjtaBlNPPi/C+AdRSnrs+
         iadlgRP7casyqjJ7TvOP0wAYSbwp9w2RrHCuQB4YN2XkR4ZBqr9xmfcRFwZ8R0H1oKo+
         OmyA==
X-Gm-Message-State: AMke39lBNTqa9RXn8M47iC6zvmRoYN+ecS+7XF/dZ8zuIg9/p7r1Uxk6AWaB5UXSCzGrCQ==
X-Received: by 10.36.124.139 with SMTP id a133mr4061149itd.84.1488932794336;
        Tue, 07 Mar 2017 16:26:34 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id j2sm816815itj.30.2017.03.07.16.26.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 16:26:33 -0800 (PST)
Date: Tue, 7 Mar 2017 19:26:32 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 0/3] staging: wilc1000: renames multiple camel-cased
 parameters in wilc methods
Message-ID: <cover.1488931933.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Multiple camel-cased parameters renamed in wilc RX buffer
manipulation methods. Originally reported by checkpatch.pl.

Changes since v1: Removing unnecessary linebreak, as 
  reported by Greg KH <gregkh@linuxfoundation.org>

Tahia Khan (3):
  staging: wilc1000: Fixes camel-casing in wilc_scan_complete_received
  staging: wilc1000: Fixes camel-casing in wilc_network_info_received
  staging: wilc1000: Fixes camel-casing in wilc_gnrl_info_received

 drivers/staging/wilc1000/coreconfigurator.h |  9 +++------
 drivers/staging/wilc1000/host_interface.c   | 27 ++++++++++++---------------
 2 files changed, 15 insertions(+), 21 deletions(-)

-- 
2.7.4


