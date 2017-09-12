X-GM-THRID: 6464629174501900288
X-Received: by 10.31.106.196 with SMTP id f187mr7020546vkc.95.1505196758385;
        Mon, 11 Sep 2017 23:12:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.196 with SMTP id p187ls599384itp.9.gmail; Mon, 11 Sep
 2017 23:12:37 -0700 (PDT)
X-Received: by 10.99.105.196 with SMTP id e187mr8471520pgc.119.1505196757678;
        Mon, 11 Sep 2017 23:12:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505196757; cv=none;
        d=google.com; s=arc-20160816;
        b=pJ3V0xopW+/VhNh8lK2dwuM24FJp35zwl9kCkCRAL/YOAGZsIuVzuoYK+PVNf7tizw
         AdqabFMAdcs3U/HK1kYWBoTPiWpnjvpPN9WpAwYdGqPqjVbEIoDirHSx8FVnmAiLzeJl
         kIDc/tnubtreOh9XPEAUqyief15+pkQzjgD7lOSYu2hmAjjgbhHKM5wA1l+oAw2Uu50M
         eYSMrpfuMLqsjAdmdOAecqyVyT1YOTivUAXv9kEnnyU1t9aGJ26oWCcbn3dXIA6hangH
         yaDrLyM+ktdNlj0mOe70FPgt/vdIfH9q1BHNrn8L/LiMDl/ueOw6iQNpD9YAMysWlH0q
         +bug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=INQ0qo/mtR6yy8pxepwQuyhsituq/1pJh0NNcyuD4hY=;
        b=oIKjzF0p/LGAJQnKhfIZu5DgFZrtQPOfLWG0J3T9go+YHW06bRluRek29Mos5hSsFp
         TgPYrNPvSR3HTEReXdOg4x+VaaNhbXA00aFANr7HiR/7nThpFNFMQSCDfDUrg6Gfp0pX
         ZJ16RpUhqMJ4apYcF3T56Fnc9Tv7Eq/5ITgi222ePVhfd4LdRnWTlwE8XIjZNtwntre7
         8m2zWp1RzvLV3Eqy+/6guiU/QUqS/T6y7kIvWTp894g1aPrydxKmwXmBZxX6nZqy+gBR
         JqI3gx1LlLF99K00hbzX3ZNB9ToSXUSInDZAJhYzxxlqo2A36DmVX9LWKjWnBt7v+w/M
         yUNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fpbi16Sj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id k76si1079136pfb.5.2017.09.11.23.12.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 23:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fpbi16Sj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id d8so5722137pgt.3
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 23:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=INQ0qo/mtR6yy8pxepwQuyhsituq/1pJh0NNcyuD4hY=;
        b=fpbi16SjDouiWtHHIWrhHPDCmUOjf0KSLHcJ9PgSuzZW9jU+T96Bj6qEnl0Rq/n8Zi
         vJwoSLMAzyJglrjQg82/rkOv064tmEID7DXMAzeYTt/qUTRO7EaQmRJ+GSaLs80jRj67
         Rj+nnNNNvXBh3ft+6Obo3F0826+jmtWRZWXjKido3Ep+4hIZTNJ+91372vs0vaAPT2GV
         +Osws0paleI40Im/Ng6rk/xprcWF1lnZeQHu/GYE9igA9ziOHjIvQbczOFnMv7Mczgij
         jnQgJ/wlWNgdmurB3+zE755emUrncHBc0J+V9UURLCBkeXlUURE5Hf+a0bw6ivNRiWNB
         HXfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=INQ0qo/mtR6yy8pxepwQuyhsituq/1pJh0NNcyuD4hY=;
        b=V/Bkp6Vx2Av1C9nmOKy4fE3DTqcCm3hQihGxxyPbO/qdgQXRRqTpMFDVHAfBQBsbye
         rSDxwOBbHHmm0xlbA8GtZ+Wy2xGflCzl5rlHgeBBikLmTRPeI2D/T77Ba8Go7W8KTXGC
         TwF64NNpUzhV1vPOFV8GU3szoRi5v/MhRHqejTlWTylRn3B6DZdLQu401pRV47fQJrAT
         +eJFBJ6zBMoW6X3jZKooCesZoiUf//BBHZLLHr5FHP/DJhETCrJgYzCn1qHnw3aDPdLz
         9fASvZcjs78Xgw2e7cKW3e2kSSlR6Rr7xNH9wpPFOXPbUyBU2HOTf34iuDTunsQdP492
         cdcA==
X-Gm-Message-State: AHPjjUh3XERTzewToo+pBC8JywJvd462OWwIEoYXdtj0f4hVqA3AKd6i
	1qg1CYUX2I+PHmJRoxs=
X-Google-Smtp-Source: ADKCNb4MEOs9SYYCCeydED9cBLib8CcG9xSrEW4R1np5Zf6QKQncbaTGb5tIFqsz63yhNc2T57bNcA==
X-Received: by 10.84.224.13 with SMTP id r13mr16131864plj.137.1505196757091;
        Mon, 11 Sep 2017 23:12:37 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([103.231.132.5])
        by smtp.gmail.com with ESMTPSA id j68sm15325888pfa.93.2017.09.11.23.12.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 23:12:36 -0700 (PDT)
Date: Tue, 12 Sep 2017 11:42:31 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] Staging: vc04_services: Remove typedef
 VCHI_CONNECTION_API_T
Message-ID: <20170912061225.GA6547@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes the typedef in order to make the code more readable.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
 -Fix the 80 column problem.
 -Remove the code in comments.

 drivers/staging/vc04_services/interface/vchi/vchi.h | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 7e14532..ad8f542 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -159,8 +159,9 @@ typedef struct service_info_tag {
 extern "C" {
 #endif
 
-extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const struct opaque_vchi_connection_api * function_table,
-                                                   const VCHI_MESSAGE_DRIVER_T * low_level);
+extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection(
+	const struct opaque_vchi_connection_api * function_table,
+	const VCHI_MESSAGE_DRIVER_T * low_level);
 
 
 // Routine used to initialise the vchi on both local + remote connections
@@ -342,8 +343,6 @@ extern int32_t vchi_bulk_queue_transmit( VCHI_SERVICE_HANDLE_T handle,
 
 // function prototypes for the different mid layers (the state info gives the different physical connections)
 extern const struct opaque_vchi_connection_api *single_get_func_table( void );
-//extern const struct opaque_vchi_connection_api *local_server_get_func_table( void );
-//extern const struct opaque_vchi_connection_api *local_client_get_func_table( void );
 
 // declare all message drivers here
 const VCHI_MESSAGE_DRIVER_T *vchi_mphi_message_driver_func_table( void );
-- 
2.7.4


