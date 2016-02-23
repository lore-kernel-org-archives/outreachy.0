X-GM-THRID: 6254563668495695872
X-Received: by 10.182.247.97 with SMTP id yd1mr34323413obc.9.1456254084243;
        Tue, 23 Feb 2016 11:01:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.240 with SMTP id f16ls438861igo.1.gmail; Tue, 23 Feb
 2016 11:01:23 -0800 (PST)
X-Received: by 10.107.11.222 with SMTP id 91mr34440744iol.7.1456254083974;
        Tue, 23 Feb 2016 11:01:23 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id u66si4528800pfa.2.2016.02.23.11.01.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:01:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ho8so117957792pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=8+GZ3jownxFqUoktW9uqzvRyHTLKr+TwEC0k+nkHk4Y=;
        b=jlSXd0E6cQ1sn0L/53v9k0Su399NjxuWIU4uJY2SVG7QKhRWLjwAblJkrTj+CdmmRr
         74SivuGz5Rf31SuuOqZTHLTkADB545B3LbdO4/UQ9rNo8ODZCfu5gNL988vqbIYFWpG1
         V1HEsJ9wh5YU5yF6/UHH14rKdPFLHfzwFbohUda7zqHAYs4F5J5DTF6DlSHKFJDPHBnF
         6m0Rk3cLwIsOBPeE0Oz6BKtmEQrO98DJOuT30ySAlVDgWtR0CmIzvOkK308DP+Ib+hq8
         NA3PAEkL5VGQ4XV9Or7GtlsEEstPzz6OrlQTD7rUtja6S8w3Se9FQyRLjx6c1T6j8zkk
         qtJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=8+GZ3jownxFqUoktW9uqzvRyHTLKr+TwEC0k+nkHk4Y=;
        b=DgkfMyeKsj5PRxCNrnshCtjc8yQ8yPJwE/0MAUW/L5KAD4EaEJNjREXtKVG2hf3vlG
         2eCEAPt6Am/6Y9pEAZCSi7s4K4PToohY8O/IZTLhBgd2ryinaGnElkD4d0BA1VyQOCuy
         TUroiYTunvpvrzR+g8A2+C9z6GIYb7raA8aYDYfWcx9GrWASx6qKm63C8qLTexzai2tN
         nPymtkkrMxLSKegqWsZeoOJg0PW2Ry7/a/9XXUgUAXCyg4fIqNl92s9bZP6KrL0sZ/Jg
         ttfrLGt6Qih7zgbEFEZc3cA1dykQjOUN9/FcaRft8K9q04HUP2Ru01xgh8XPflUHOAvC
         vBmw==
X-Gm-Message-State: AG10YOQoeAT9XLbkBrvvi7XaV13nEhu7TSf/wZJjH8vpGbskqlPi8Z3DypizedqYwsjOJA==
X-Received: by 10.66.248.168 with SMTP id yn8mr48529579pac.24.1456254083784;
        Tue, 23 Feb 2016 11:01:23 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.207])
        by smtp.gmail.com with ESMTPSA id o184sm45884548pfo.36.2016.02.23.11.01.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 11:01:23 -0800 (PST)
Date: Tue, 23 Feb 2016 16:31:32 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gs_fpgaboot: Use kernel type 's32' over 'int32_t'.
Message-ID: <20160223110132.GA3546@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Reply-To: 

Use kernel type 's32' over 'int32_t'.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
index f41f4cc..93a61ad 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
@@ -51,6 +51,6 @@ struct fpgaimage {
 	char	part[MAX_STR];
 	char	date[MAX_STR];
 	char	time[MAX_STR];
-	int32_t	lendata;
+	s32	lendata;
 	char	*fpgadata;
 };
-- 
1.8.3.4


