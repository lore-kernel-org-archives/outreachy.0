X-GM-THRID: 6253096427237408768
X-Received: by 10.140.252.131 with SMTP id x125mr14323874qhc.12.1455912465439;
        Fri, 19 Feb 2016 12:07:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.92.101 with SMTP id cl5ls12445igb.27.gmail; Fri, 19 Feb
 2016 12:07:45 -0800 (PST)
X-Received: by 10.107.164.208 with SMTP id d77mr16279724ioj.22.1455912465089;
        Fri, 19 Feb 2016 12:07:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id u66si1985008pfa.2.2016.02.19.12.07.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 12:07:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id e127so56490908pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 12:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=9/xGu3R3WA3mNiVqk9Orxcg6CmnvWcUb5FEPua+yEW8=;
        b=SG1QL+X9nvFM7cMddsXmw50DJqYEmV5sj++aj1jUlhfopyH0D8udb+AlFQksD1C8Bb
         ssrJ+I7/JZ3W/u9jnTy5iECKGPZ85aX+X/1Ujvp6LCuGPzTB1lv0W1TNvv8ikloG67jD
         /ujhTHeTMr/myCgYwlOR+ZBXeP/mJ8Bk3ATSCwE1bR9ZWyV7Z3bin/VqOZKqmdIAFXYa
         dabIMwKI9j5yrXAQxLIp4KeSnor96AzZxhoJwlE9is0p0GsSamDAlGxVYjSOT7sZF6xp
         bsxniVFckGmnQlsdlBTCyVwYjKMHARc3ITYe56NyCBI4AxHQ7Vgb5nCXPjy6esLA2aGs
         Xdxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=9/xGu3R3WA3mNiVqk9Orxcg6CmnvWcUb5FEPua+yEW8=;
        b=FWItEkNVW3wkYg4CdIA9mmI4bFyRE7bzP1Uz8UHOfAuCu9VQsUYltfaHsheF1CA4F7
         xQRkVQ9gsfHnOrMhz2tuwGpDwcs9QGTjsGUmz+dATjmXelL5RE4f82YUrzs05evY7Htg
         PEEc8nVcPd1oClCNAJ13Jv888lfVK51XkZr3v5HPCdZ87IVRisUaNXlHQQDuWal1NhX0
         BPaMhfGV7kOmw5cXXu7laBvDNXdVgG/+0rvyD0y1x3dN10X+wumgXm7BHZSCm7+Mtzif
         eqPfug18wS5Itg3keT5keJFVl0jhB+Ijh6L+/+HKR38+vYH69n3F9DValyPgDuzM10fh
         sD4g==
X-Gm-Message-State: AG10YOSP3aPqBYL9YOwbzkHzyXAOu+ayEf+AriJSPgcvcV07pP70SN0p6K24ICddRKI9Ig==
X-Received: by 10.98.13.68 with SMTP id v65mr20571875pfi.150.1455912464956;
        Fri, 19 Feb 2016 12:07:44 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.55])
        by smtp.gmail.com with ESMTPSA id xa9sm19740947pab.44.2016.02.19.12.07.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 12:07:44 -0800 (PST)
Date: Fri, 19 Feb 2016 17:37:41 +0530
From: Sandhya <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH]Staging:tty:amiserial:Add space before open parenthesis and
 fix indent warning.
Message-ID: <20160219120741.GA5755@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Add space before open parenthesis of "if" statement and fix indent warning.
The checkpatch.pl script reported  error and warning.

diff --git a/drivers/tty/amiserial.c b/drivers/tty/amiserial.c
index 2caaf5a..9a5c584 100644
--- a/drivers/tty/amiserial.c
+++ b/drivers/tty/amiserial.c
@@ -262,10 +262,10 @@ static void receive_chars(struct serial_state *info)
 	custom.intreq = IF_RBF;
 	mb();
 
-	if((serdatr & 0x1ff) == 0)
-	    status |= UART_LSR_BI;
-	if(serdatr & SDR_OVRUN)
-	    status |= UART_LSR_OE;
+	if ((serdatr & 0x1ff) == 0)
+		status |= UART_LSR_BI;
+	if (serdatr & SDR_OVRUN)
+		status |= UART_LSR_OE;
 
 	ch = serdatr & 0xff;
 	icount->rx++;

