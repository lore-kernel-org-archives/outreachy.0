X-GM-THRID: 6260489275457929216
X-Received: by 10.28.170.65 with SMTP id t62mr722853wme.6.1457633747978;
        Thu, 10 Mar 2016 10:15:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.140 with SMTP id 134ls206825wmf.20.canary; Thu, 10 Mar
 2016 10:15:47 -0800 (PST)
X-Received: by 10.28.7.133 with SMTP id 127mr728213wmh.2.1457633747291;
        Thu, 10 Mar 2016 10:15:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id 185si195526wml.0.2016.03.10.10.15.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 10:15:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id p65so39405825wmp.1
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 10:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=T/G/zBVoz7YXu6840d5U4v90ePYYBvKFafFTOk7sRfQ=;
        b=vHwbtMXaERYg8sf3jvuQ+MkNMv0mNBVEQXfio7O3C3HVVjcYNI++6NhFN3KifLVOyn
         t/JkAWPgOGng+/66uqJtPic9uqX9sqEjW6BCWj2QBJunP4hqAbSKcU81bu97DrJDqcZN
         6eXBKSQI1BXK4eeOOLlEz0FYHmOyj9d2xGjF3LcZiMoyOmLidSCUT/GZivXwdvyHjF3L
         vaDb9JKqthhtXCFqbpEmPtJjKBEYy0OrTCc3jxHc88QKN84v04vptk4KkpP0/Vba2zO/
         zqFKtv8QsFiDqOx3DgdS9GmjeEtYoWGRVVu0owoE+R9WGxL5RZhqc46V5V51wVTY8pdo
         LJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=T/G/zBVoz7YXu6840d5U4v90ePYYBvKFafFTOk7sRfQ=;
        b=WoluKmqSZI3IyFBAJbK2f9RedJ+qLpfRDZWFXiDPmVar608oKGZEnTcS1xHWS/ST1+
         PYghnq7neHbe07ErTfUEAl2lKqug/uizh2U6+kq8+yWIlh/ze7iYy5Pq/63gdKpYMeaJ
         cXfQnp4SjYdY8Z1mWRkl1CqmwZoN344Yj87jwb0NIwu7lZ++wuMOOZwv8MFYEoDPz2Nn
         2c3VZE+orTrvse+zffzdePt8HiD4MQ+clUJycNrnqPDsFiIy4bJ2pEEoDAl1ZkunvUlf
         ZkpMH9FKtEfdZ7N0xJySiY2CKnAifA2i4hkDJAvks48PJ4FdT4xtJEXMseZ/io2TMV5H
         sRkQ==
X-Gm-Message-State: AD7BkJIR0eUJLJUK0PFgzTVmQae4zLVNLh2UmAc7z7S9XzaLKu9D61T7RjKWDUpZ3tq3hA==
X-Received: by 10.194.158.36 with SMTP id wr4mr5256018wjb.134.1457633747144;
        Thu, 10 Mar 2016 10:15:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([91.126.73.162])
        by smtp.gmail.com with ESMTPSA id p125sm4645577wmd.16.2016.03.10.10.15.45
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 10:15:46 -0800 (PST)
Date: Thu, 10 Mar 2016 19:15:40 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] extensions: libipt_LOG: Avoid to print the default log level
 in the translation
Message-ID: <20160310181537.GA16699@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid to print the log level in the translation when the level is the
default value.

Example:

$ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 10 -j LOG
nft add rule ip filter INPUT icmp type != router-solicitation counter log

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 extensions/libipt_LOG.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/extensions/libipt_LOG.c b/extensions/libipt_LOG.c
index f3875b6..216b1ca 100644
--- a/extensions/libipt_LOG.c
+++ b/extensions/libipt_LOG.c
@@ -194,7 +194,8 @@ static int LOG_xlate(const struct xt_entry_target *target,
 		xt_xlate_add(xl, "prefix \\\"%s\\\" ", loginfo->prefix);
 
 	for (i = 0; i < ARRAY_SIZE(ipt_log_xlate_names); ++i)
-		if (loginfo->level == ipt_log_xlate_names[i].level) {
+		if (loginfo->level != LOG_DEFAULT_LEVEL &&
+		    loginfo->level == ipt_log_xlate_names[i].level) {
 			xt_xlate_add(xl, "level %s ",
 				   ipt_log_xlate_names[i].name);
 			break;
-- 
2.7.0


