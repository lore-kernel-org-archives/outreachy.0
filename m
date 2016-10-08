X-GM-THRID: 6344026907248427008
X-Received: by 10.195.11.68 with SMTP id eg4mr1408753wjd.17.1477083868155;
        Fri, 21 Oct 2016 14:04:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.37.67 with SMTP id l64ls1167246lfl.19.gmail; Fri, 21 Oct
 2016 14:04:27 -0700 (PDT)
X-Received: by 10.25.193.195 with SMTP id r186mr1453835lff.17.1477083867146;
        Fri, 21 Oct 2016 14:04:27 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id h82si11502wmh.2.2016.10.21.14.04.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Oct 2016 14:04:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id d199so462284wmd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 21 Oct 2016 14:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=glyKeK08vxIElGmUBuvzEvIY4hXJmw3+GXPpWbFTd4Q=;
        b=DK+ZMH13wl+EMYHElp2bUmpUUAT/m76YKkDMIBH8mgerHAJ4lqXdf/WKIjvJr3iplo
         lbRUiFV0zNGdr3jsVIC3FjHSu23cnbYdysfa3cFqPnYZgKtYVMNSei9/4RCGDkyEnGRf
         muiiIZuVvTEpIuQfUozs8PPcQB+ms2SdS8cQIf6+nZEZbGz9rG4eG1XynioTLkchA0g6
         eUNmiyOMYqVqnDUBCLmUmXj5BP1cS/TFeVp/Eksup6XfzbeflBvCDHmVhzPXqb/KonZA
         nb6rCZApWPnJGufMVMfOZImImb5rGGDIFrg0JpaEPWefPFOuFFR7YMEo/6MEhyMQyOe3
         ShnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=glyKeK08vxIElGmUBuvzEvIY4hXJmw3+GXPpWbFTd4Q=;
        b=PWx71BxQFqmW2I4dy+ecIHDM0CD3POLKQzhp4Etrqsdm+rUuvhC0ifETOXOMOQACKl
         BCGwRFXsM4rldgQ1qm9tZbr9NdBFZPNmAkKG6SyDnBoePelQu2bf0sqYMrjs90dNNu02
         mhXMU6btvTvThOux19nIbPo1egn2gdYFhbbtFA1lclvhwqbjkEbGdpAJ3ulsRr3RFICO
         NIJN++sBOHhRpGDkx7E8xDFvTcOIa+9loLmWFiNs9gSfNHGQ8mHHlAjW7yq0hu8DGf0O
         XDT8e7X9+R1KkJvQ268jBIuho07+c0g0sENSxmIGhv6X3Rh68DZ97299MAaBuF/1nCk2
         AW5Q==
X-Gm-Message-State: ABUngvemq6vbvHrhaGCnTxBVAIWiCqIXwXkqbQqQg6U7e13zWE2aTOypgrQ4fybaDDyEUA==
X-Received: by 10.194.142.116 with SMTP id rv20mr2283573wjb.184.1477083866885;
        Fri, 21 Oct 2016 14:04:26 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (238.red-88-21-220.staticip.rima-tde.net. [88.21.220.238])
        by smtp.gmail.com with ESMTPSA id p3sm4720700wjr.31.2016.10.21.14.04.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Oct 2016 14:04:26 -0700 (PDT)
Date: Sat, 8 Oct 2016 13:28:15 +0200
From: Keila Novo <laurana5@gmail.com>
To: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH]/wilc1000:wilc_wfi_cfgoperations: INTIAL fixed to INITIAL
Message-ID: <20161008112815.GA3154@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Checkpatch error fixed INTIAL to INITIAL

Signed-off-by: Keila Novo <laurana5@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index c1a24f7..9d4239f 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -29,8 +29,8 @@
 #define P2P_INV_REQ			0x03
 #define P2P_INV_RSP			0x04
 #define PUBLIC_ACT_VENDORSPEC		0x09
-#define GAS_INTIAL_REQ			0x0a
-#define GAS_INTIAL_RSP			0x0b
+#define GAS_INITIAL_REQ			0x0a
+#define GAS_INITIAL_RSP			0x0b
 
 #define INVALID_CHANNEL			0
 
@@ -1470,10 +1470,10 @@ void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size)
 			}
 			if (buff[ACTION_CAT_ID] == PUB_ACTION_ATTR_ID) {
 				switch (buff[ACTION_SUBTYPE_ID]) {
-				case GAS_INTIAL_REQ:
+				case GAS_INITIAL_REQ:
 					break;
 
-				case GAS_INTIAL_RSP:
+				case GAS_INITIAL_RSP:
 					break;
 
 				case PUBLIC_ACT_VENDORSPEC:
@@ -1659,10 +1659,10 @@ static int mgmt_tx(struct wiphy *wiphy,
 					curr_channel = chan->hw_value;
 				}
 				switch (buf[ACTION_SUBTYPE_ID])	{
-				case GAS_INTIAL_REQ:
+				case GAS_INITIAL_REQ:
 					break;
 
-				case GAS_INTIAL_RSP:
+				case GAS_INITIAL_RSP:
 					break;
 
 				case PUBLIC_ACT_VENDORSPEC:
-- 
2.7.4


