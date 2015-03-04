X-GM-THRID: 6467884154880
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d8b32e578be7c8ba
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr356921lae.7.1425450020851;
        Tue, 03 Mar 2015 22:20:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.198 with SMTP id k6ls45002wiy.52.canary; Tue, 03 Mar
 2015 22:20:20 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr3566669wix.0.1425450020416;
        Tue, 03 Mar 2015 22:20:20 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id by11si1060781wib.1.2015.03.03.22.20.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:20:20 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so27939572wiw.3
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 22:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Z8YowYGePFIFj0KE1LdV/t5ZhEAS0zbrFmGWOmQOqRE=;
        b=unulOX6RbIgE9gJUMqdUbIWTl5kf+zPxX5NQU8pSsoTRgBGznCgX7Bt3jXEhsQlnCy
         o7ySAo0M486kSwTRtEnMqwDWqpKS+rObSut9/STVntwLe6T1C9PQ9mUXWibyPLIzIKl4
         L+XtpUXr/W9YYywhaGzyydquwdOE1OCy2WKlsrF2gOZp51qVF1/2EbO25bsOsRQiEbc2
         vSMZaYfKiw67+IWdKqKBtEPJWaQlozSteDsJ+jkwp/1VwcFn9gaX7/qJW8++8O99kNB9
         fBLP8+cOvZaPixgafvlV/6wDx2sMioZc/H+XGuQ+PwguzyzeY16ME/JBQgFd5+yfsVOj
         Dxig==
X-Received: by 10.180.198.211 with SMTP id je19mr8955228wic.37.1425450020350;
        Tue, 03 Mar 2015 22:20:20 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id lb6sm4405372wjb.22.2015.03.03.22.20.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 22:20:19 -0800 (PST)
Date: Wed, 4 Mar 2015 08:20:14 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: unisys: virthba: remove extra parentheses
 around left bit shift operations
Message-ID: <bdbddd46423ecf5cb02099390719327ba83d3fed.1425449681.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise left shift operations.
The case handled is when resultant value is assigned to a variable.
The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
<<
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
<<
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
<<
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/unisys/virthba/virthba.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/virthba/virthba.c b/drivers/staging/unisys/virthba/virthba.c
index ca89e76..2ad0c19 100644
--- a/drivers/staging/unisys/virthba/virthba.c
+++ b/drivers/staging/unisys/virthba/virthba.c
@@ -1534,7 +1534,7 @@ virthba_serverdown_complete(struct work_struct *work)
 		switch (pendingdel->cmdtype) {
 		case CMD_SCSI_TYPE:
 			scsicmd = (struct scsi_cmnd *)pendingdel->sent;
-			scsicmd->result = (DID_RESET << 16);
+			scsicmd->result = DID_RESET << 16;
 			if (scsicmd->scsi_done)
 				scsicmd->scsi_done(scsicmd);
 			break;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

