X-GM-THRID: 6403068261255086080
X-Received: by 10.157.82.164 with SMTP id f36mr1217824oth.17.1490830504742;
        Wed, 29 Mar 2017 16:35:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.116 with SMTP id 107ls5919277oti.34.gmail; Wed, 29 Mar
 2017 16:35:04 -0700 (PDT)
X-Received: by 10.31.3.133 with SMTP id f5mr1051827vki.4.1490830504310;
        Wed, 29 Mar 2017 16:35:04 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id i189si54962pfg.3.2017.03.29.16.35.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 16:35:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so5461401pgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 16:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hWCzrJCDFuv2F/x/sP/5JZg95Be0/jP8dCbvLsuCfo0=;
        b=DHbDhvPVcQ9xNxykr/vtV8GEokMiuIALxAqh/7G2EueqXRWT8fPjcVW+P8zJhMBat+
         6XDYnUJNrRJPaaM6Wizq/YatRDtcqVhzu2iJjLvrsN+5R83JUUjZP7NVQ9W58759IYTD
         T6YRUcodtizDub3U+L+MMRCkIbDQURLfsE459LebV0IS41JAmyTP7uTJL74COHrbEUAe
         o0zMf0i6qrSgsPkDCAsEiYBGyFT8OlOomkPhKHnoTwKFoVXxmpDChNtr+sWhOaB8RaQa
         P3sJNYlXyyQRvNvBFTAg+zUV18k9A8m+9xgGJkEgWcsCa2gahJomhk8zQHQh25OwGs6h
         Gf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hWCzrJCDFuv2F/x/sP/5JZg95Be0/jP8dCbvLsuCfo0=;
        b=k+NpVT998yT98R94nEyUdPv67Bgi17a/1QINg67Zv1HPZBDTcgLxjkLaZMw0LUXuC1
         198CR4yZe59V/96SxTiehBiBcBxR2j7gNqJntmndYZ/2vveHlcaAtB7zUwXCz4v+Zfym
         +JAtWc4K4G2v9Q6f+a42LG0DJKHCX14RnOkeUIeSkg72hRPvKbyZ9BFPVUV3e8iOLQPW
         tTlXj0lZakVZw4hzTMumg5Fkp7JGeXKMdLZS0uvKBV3f5x2LiItFM0fMCQZ2HvIENvzl
         idA3hqxk4CYrTLsfq80Bhe6vGG5H7SvY9CPLdtf79n4fFZos+CF/68kIky8j3mjBvnfB
         2xAA==
X-Gm-Message-State: AFeK/H1O620n901cUDzeBp44iTgGU5e1LIffUm3Ye0dCUkk0OjK6dk4i5IfvCr8FoPaVmQ==
X-Received: by 10.98.101.7 with SMTP id z7mr2993660pfb.81.1490830503641;
        Wed, 29 Mar 2017 16:35:03 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e67sm332512pfe.64.2017.03.29.16.35.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 16:35:02 -0700 (PDT)
Date: Thu, 30 Mar 2017 05:04:59 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] iptables: extensions: Remove assignment in if condition.
Message-ID: <20170329233459.GA22682@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove assignments in if condition as reported by checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/libebt_ip.c          | 11 ++++++-----
 extensions/libip6t_ipv6header.c |  5 +++--
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/extensions/libebt_ip.c b/extensions/libebt_ip.c
index 4ca63e9..deae6f4 100644
--- a/extensions/libebt_ip.c
+++ b/extensions/libebt_ip.c
@@ -68,9 +68,9 @@ parse_port_range(const char *protocol, const char *portstring, uint16_t *ports)
 {
 	char *buffer;
 	char *cp;
-
+	cp = strchr(buffer, ':');
 	buffer = strdup(portstring);
-	if ((cp = strchr(buffer, ':')) == NULL)
+	if (!cp)
 		ports[0] = ports[1] = xtables_parse_port(buffer, NULL);
 	else {
 		*cp = '\0';
@@ -97,8 +97,9 @@ static int undot_ip(char *ip, unsigned char *ip2)
 	strncpy(buf, ip, sizeof(buf) - 1);
 
 	p = buf;
+	q = strchr(p, '.')OA;
 	for (i = 0; i < 3; i++) {
-		if ((q = strchr(p, '.')) == NULL)
+		if (!q)
 			return -1;
 		*q = '\0';
 		onebyte = strtol(p, &end, 10);
@@ -141,9 +142,9 @@ static int ip_mask(char *mask, unsigned char *mask2)
 static void ebt_parse_ip_address(char *address, uint32_t *addr, uint32_t *msk)
 {
 	char *p;
-
+	p = strrchr(address, '/');
 	/* first the mask */
-	if ((p = strrchr(address, '/')) != NULL) {
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


