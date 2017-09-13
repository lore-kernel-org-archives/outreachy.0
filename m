X-GM-THRID: 6464947819093426176
X-Received: by 10.176.72.13 with SMTP id b13mr10564331uad.81.1505284706528;
        Tue, 12 Sep 2017 23:38:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.44.65 with SMTP id i62ls2668235iti.0.canary-gmail; Tue, 12
 Sep 2017 23:38:25 -0700 (PDT)
X-Received: by 10.129.75.88 with SMTP id y85mr11029465ywa.108.1505284705918;
        Tue, 12 Sep 2017 23:38:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505284705; cv=none;
        d=google.com; s=arc-20160816;
        b=HkAR15GTN1UQxM2xNONN3ZSb8+Uy/eDFslW6V/RgmP0DOLP2HVOWs3IBjSA8GD/d1k
         PifiajO/Ao5J2CZXEjV8sh6zRt4PwjgVdwqR/F40VHnxIoPhfFuM/q8wM18NzXwtEO+S
         9hJl+J9w/Fhz6Hs65ZvG+EaM/WwRM/5ZMtMzcHsYgqPZjUK3QJaTWAfPx+obckVZHeHz
         7TSmoSD0priZbzOyBqw7V7RyygzMDgo+eftmXd0XsxvCRstJ9UPjc2sVosvUeX69Cpac
         hSDN/9Qai4VPNsNju+PKA2Qk7zzXE52rJ77kxNeq2omqFM12utRPqKmwIo98OUZZQ5/g
         NiYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=khMydh6RVkrxZIF8ecLS7tF8WFtiliu1jfhI62rK4ag=;
        b=n+Ua5pQNxoKqSV6CqDBKkk/FCWKFfC9MRDfZTpvbwE/qxmDMe+EtJbGJRgzNcElMqG
         k2wwP5SdsdVsO/GZ61CLAYK748W9kCjuHNjsIajyQQ9ydxDGJ3oVmZb9+ih70/M/REuM
         QQH6JeV6oVPI5AY6A9F1Yt0OGF0sahgNzDKZj2zy7TQuSnUTIxrhOB73planxoiPa1c3
         AlI9TEt2n+UYTrGRGB9zbcXLHQfk83sFzfC/lpAam9uRjvoeke3PN4cm8mGZJljB05TO
         hfI/wUq3DK++oWm6vz3xhA+fRv3Etgrn4jnz6C2lIpYy85a/klA7808mlMBIVHN0uSvy
         2cTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gfyuWVyd;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id q65si1320331pfj.8.2017.09.12.23.38.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:38:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gfyuWVyd;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v5so7236532pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 23:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=khMydh6RVkrxZIF8ecLS7tF8WFtiliu1jfhI62rK4ag=;
        b=gfyuWVydzrtSOQlnZpSBHnvkNdwZ07HShTadVdA1veZqteOeP0ZC9Fe1MWNOQUJQ19
         QucCHGPJea4dCHoAlXz4+BaxC1jZ74oaHg0maIHaEElzAbqc4ADAjBniszmttjZNYyna
         E3x+cYvXBRYARd101NFxPX+IgvLin01B+59VZ0n7lf1KUOHkrfuuA7WG5qKGGFSq4Ckw
         5X3DNGjnqtj0aqmQMU7theCTsfyCIxqh7cRPeDjHO9UNOiB2RkHOPcjSDdnzEOw/25B3
         xxu5QO+hDO3yyS9xpcs2LDCQ2R95YS51oKA0REnRciNAKQpnMARaZjzrJwK4VXMFpQWQ
         TzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=khMydh6RVkrxZIF8ecLS7tF8WFtiliu1jfhI62rK4ag=;
        b=s5f+I1AjV4TJt66gRcDSVJQNCt2QzB8s09UsQZ/tVFXP/LuqzvvzVIaUYyvw6JGquo
         dyZBD7GD2LkFQYWfimDQWBDgEiSSJwVnljF0Rr4Mq/o3I6KP030iPjKjx+uUTpuV/rD+
         U8eVRCof+7mL79aHWxQuJXsV/FaOZBtTJQcVTSgoP/vBI9Sj1gOGdxQdlahMk1VcNHF3
         dOhgE5WvsqjgI2hMuCu/DIAT2FvNfg/TRjCTk90IAnyrVzvQRfeMlqvn9dEojiEgYSQQ
         VWIPiea9OpR2h+SRzwimUKAXtZHRy6HomllLTFzkYh/JHgFaDMOylWhxZsT7Lb8H20T0
         VNDQ==
X-Gm-Message-State: AHPjjUgt57lYG1AC0hj2j4qxoCmIVqG+WX2+YTdKqKoq5/iwJDGyBK1g
	kJH46BPqjRrs9Q==
X-Google-Smtp-Source: ADKCNb7+JcSeDX1kFgi2+zMWHGgJcQoqMngWbNOcTr0Iq0LeEy8O2jirpIyfDMYIp7zyEgEDEItAlQ==
X-Received: by 10.98.202.74 with SMTP id n71mr16997914pfg.139.1505284705668;
        Tue, 12 Sep 2017 23:38:25 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id w90sm25521862pfi.80.2017.09.12.23.38.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:38:24 -0700 (PDT)
Date: Wed, 13 Sep 2017 12:08:19 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] Staging: vc04_services: Remove code under comments
Message-ID: <ddd3ada72928429d67e69f307ebafb765f04c78e.1505284040.git.meghana.madhyastha@gmail.com>
References: <cover.1505284040.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505284040.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes the code under comments.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 7e14532..9fa9b93 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -342,8 +342,6 @@ extern int32_t vchi_bulk_queue_transmit( VCHI_SERVICE_HANDLE_T handle,
 
 // function prototypes for the different mid layers (the state info gives the different physical connections)
 extern const struct opaque_vchi_connection_api *single_get_func_table( void );
-//extern const struct opaque_vchi_connection_api *local_server_get_func_table( void );
-//extern const struct opaque_vchi_connection_api *local_client_get_func_table( void );
 
 // declare all message drivers here
 const VCHI_MESSAGE_DRIVER_T *vchi_mphi_message_driver_func_table( void );
-- 
2.7.4


