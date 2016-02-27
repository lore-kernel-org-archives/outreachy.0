X-GM-THRID: 6256047762619498496
X-Received: by 10.140.30.99 with SMTP id c90mr23122372qgc.2.1456599627969;
        Sat, 27 Feb 2016 11:00:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.199 with SMTP id n7ls172287igv.11.canary; Sat, 27 Feb
 2016 11:00:27 -0800 (PST)
X-Received: by 10.66.150.68 with SMTP id ug4mr6254933pab.33.1456599627253;
        Sat, 27 Feb 2016 11:00:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id y20si552883pfa.2.2016.02.27.11.00.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 11:00:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id a7so4898863pax.3
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 11:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=l6s6pzrctmUQHnZO34+WiiXHCixbKmElFB5c2ggDQ9A=;
        b=Eox4lGrTTEmav45ChUmur3s23vRXwAsIdKsnYRqjAmb6HyB67vlWP+/jT5AET6atLo
         Zjxt+Iv3O16kFUYgpDx9YHBvwi5NU+KoCsD4IIDVxJq25wXPr61dAJhGzWBh5u3icjd3
         wbHr923lpJshF9HCCbFUTAWaaeDJNlk3ZJMsGoz9FXGM7wP6bfjsOqzGUvrp1L0AyiLO
         0+shdOXcKv6pNbEciXj87xRcuaKsxMVWv3oS8L8+qw/HqpHFhfYZj8RqzQNQ74TkOyd9
         zmWgfEgORE5Sx/cY7oPnsr4Og0zaxfwy2Ld/lvhy896gAtyfr8MmtOH8w8HEW5nbf26A
         Ht+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l6s6pzrctmUQHnZO34+WiiXHCixbKmElFB5c2ggDQ9A=;
        b=jspUSxshiHMqCIEDRfYyLL07aoGp59nwQjO3bzA4Ojqyr9A8mN1U1CmQQmZA+gMtGu
         XR3+DMxzqXoSRQuhAlKU6bNj8zRMefrFahC6hPd3X+TTEJm64/qqYypxnz8foZY4BF/D
         ST3toOIUcV6XeZ6riyHxQ0ZnTx7m5pE8Sa1kW7Z1nkOGlidLHKQ8grpBIW5TV/+Kz6Lo
         q2NQLnDHEQxjboD5/qMb23gA+3R5AZZfasA5H6RjjMpZQWxig2u7KoWT2eq8TjBkRDP4
         hN+maB8fUo9+NwcvaqVuOcOaygdg7j70U3lg0NpSd+oINDbu+1Oq9vH4JZ7HjD6C9Rt+
         zcmg==
X-Gm-Message-State: AD7BkJKwie2QHin1iEZdAUdOX2TdGnW/jxWQs44n8ZZ6K3L4JGmC+z54Am5wahbiEsPrHQ==
X-Received: by 10.66.192.195 with SMTP id hi3mr11073876pac.149.1456599627125;
        Sat, 27 Feb 2016 11:00:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n28sm27639077pfa.45.2016.02.27.11.00.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 11:00:26 -0800 (PST)
Date: Sun, 28 Feb 2016 00:27:38 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: ptlrpc: Prefer using macro DIV_ROUND_UP
Message-ID: <20160227185738.GA3482@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Fixed typo "lusture" to "lustre" in the subject

 drivers/staging/lustre/lustre/ptlrpc/niobuf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
index 47f53b4..9f8111a 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
@@ -160,7 +160,7 @@ static int ptlrpc_register_bulk(struct ptlrpc_request *req)
 		 "registered: %d  rq_xid: %llu bd_last_xid: %llu\n",
 		 desc->bd_registered, xid, desc->bd_last_xid);

-	total_md = (desc->bd_iov_count + LNET_MAX_IOV - 1) / LNET_MAX_IOV;
+	total_md = DIV_ROUND_UP(desc->bd_iov_count, LNET_MAX_IOV);
 	desc->bd_registered = 1;
 	desc->bd_last_xid = xid;
 	desc->bd_md_count = total_md;
--
2.1.4


