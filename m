X-GM-THRID: 6403286908610281472
X-Received: by 10.107.134.214 with SMTP id q83mr109223ioi.35.1490881412869;
        Thu, 30 Mar 2017 06:43:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.116 with SMTP id 107ls31507oti.34.gmail; Thu, 30 Mar
 2017 06:43:32 -0700 (PDT)
X-Received: by 10.157.13.169 with SMTP id 38mr2258273ots.69.1490881412509;
        Thu, 30 Mar 2017 06:43:32 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si334905pfb.0.2017.03.30.06.43.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 06:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so10239777pgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 06:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HhHI842kOcxmsXXyocEvCxzu7xToIrUpW+4/PUrCuUs=;
        b=TKaKUuBcwyWNVNUkTx5+XXnjjt+2NNv3lUOBfes0gvGPd3KUWk4+CJs1Ef1C5UKyjm
         BOmGyH8LRV86sHNbJ5WCpWSJGRPqxIhNUzNepZXVb97tU8ekrCCBLwr/G2N+HAmwnhr4
         ThloXND9y7u+cLOc92AKo1hHcpdmsKMWg6gzYkB7zZBToM/l+Bl8dT87svNAPOHyw0gr
         O+11fjVKi/05QodZXmGo2ZUdwB3llz5yfXqSZ2wCxapGcHUC1okyPPwm8e8uDcXotL0Q
         TX6VtCbT+9qJQzT7yRXrmSORkUNod6+2gDfVYk3vTLr2miJUeMne55aVdx/dmHHH3a28
         3m9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HhHI842kOcxmsXXyocEvCxzu7xToIrUpW+4/PUrCuUs=;
        b=e3ykYTQXUchH17TZc8HhVMiL4aYaHmBEMmGJ/3ep4UmDtjAUyi3K8lIqGjZdZi4hbx
         XJMMq/dB7tg1U7jQZOf8ld9/V+XErLoABQ74qc8EJu4oKHDVh0yc3CvuERdMO5QvSxy1
         Ket+ivhTSCqFnnMow5lMnx3joe3zOX0logeVQX+RVdp+yqnq3h66CgCyZ/8THpdxgKyp
         FeWHxejWJEFXS6AdAoDOmcfbrp9DOJLKltjQxiUHKMJC0G4UlEh3s4XjjqexajirBc/N
         pR1CPlasgKMD+P8EcSVvfZ5pecxLEduBYCHLCshL1IWpRv/pjV3XApTrrd4ncgVyReuY
         q0Aw==
X-Gm-Message-State: AFeK/H0iBPAPp0PmfBQWRUC6BIsW0zQR+e/pizcHhoVKnXlqzHregJZdToSAlMSccyTlWw==
X-Received: by 10.84.210.228 with SMTP id a91mr7222658pli.120.1490881411837;
        Thu, 30 Mar 2017 06:43:31 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r8sm4849398pfk.80.2017.03.30.06.43.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 06:43:30 -0700 (PDT)
Date: Thu, 30 Mar 2017 19:13:27 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] iptables: extensions: Remove assignments in if condition.
Message-ID: <20170330134326.GA30578@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove assignments in if condition as reported by checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
change in v2
 *remove the error.

 extensions/libebt_ip.c          | 9 ++++++---
 extensions/libip6t_ipv6header.c | 5 +++--
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/extensions/libebt_ip.c b/extensions/libebt_ip.c
index 4ca63e9..6b301e2 100644
--- a/extensions/libebt_ip.c
+++ b/extensions/libebt_ip.c
@@ -70,7 +70,8 @@ parse_port_range(const char *protocol, const char *portstring, uint16_t *ports)
 	char *cp;
 
 	buffer = strdup(portstring);
-	if ((cp = strchr(buffer, ':')) == NULL)
+	cp = strchr(buffer, ':');
+	if (!cp)
 		ports[0] = ports[1] = xtables_parse_port(buffer, NULL);
 	else {
 		*cp = '\0';
@@ -98,7 +99,8 @@ static int undot_ip(char *ip, unsigned char *ip2)
 
 	p = buf;
 	for (i = 0; i < 3; i++) {
-		if ((q = strchr(p, '.')) == NULL)
+		q = strchr(p, '.');
+		if (!q)
 			return -1;
 		*q = '\0';
 		onebyte = strtol(p, &end, 10);
@@ -143,7 +145,8 @@ static void ebt_parse_ip_address(char *address, uint32_t *addr, uint32_t *msk)
 	char *p;
 
 	/* first the mask */
-	if ((p = strrchr(address, '/')) != NULL) {
+	p = strrchr(address, '/');
+	if (p) {
 		*p = '\0';
 		if (ip_mask(p + 1, (unsigned char *)msk)) {
 			xtables_error(PARAMETER_PROBLEM,
diff --git a/extensions/libip6t_ipv6header.c b/extensions/libip6t_ipv6header.c
index 6f03087..887d225 100644
--- a/extensions/libip6t_ipv6header.c
+++ b/extensions/libip6t_ipv6header.c
@@ -85,8 +85,9 @@ name_to_proto(const char *s)
         unsigned int proto=0;
 	const struct protoent *pent;
 
-        if ((pent = getprotobyname(s)))
-        	proto = pent->p_proto;
+	pent = getprotobyname(s);
+        if (pent)
+		proto = pent->p_proto;
         else {
         	unsigned int i;
         	for (i = 0; i < ARRAY_SIZE(chain_protos); ++i)
-- 
2.11.0


