X-GM-THRID: 6464947819093426176
X-Received: by 10.98.205.194 with SMTP id o185mr10395340pfg.37.1505378001841;
        Thu, 14 Sep 2017 01:33:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.210 with SMTP id f201ls4375042ioe.5.gmail; Thu, 14 Sep
 2017 01:33:21 -0700 (PDT)
X-Received: by 10.107.104.8 with SMTP id d8mr639449ioc.5.1505378001298;
        Thu, 14 Sep 2017 01:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505378001; cv=none;
        d=google.com; s=arc-20160816;
        b=eMzgL9WV9De1eKYt4HgBIucQaqi7I9asORJ3auCJuIyBTu+XmMxcwsNv6NQY2FHzfr
         Vkc+Y3brm2jMgAY+NE5Bn08ZLWG6JKflycJLzzJ6vo++YMW7Y7n7Jx0poSDZs8j+vA27
         b2AzazmvXQTaG+dUTfYoZTRZxL0CfJKFO4uyB83fEDNUbu1UIsbNNHcvIh0RK+FnlqlL
         aCumaENP5nIa2eToRDunsvDtEc4vRYmaw04+OBWh/r9G3CrmZZcojeApH0+Do7IHfaNm
         O0V9wiHD8XqHQnKniRhIOvezgaMRm1CQKjipJKnKOa7LL1UF0se5JZU4PMpXNI6KG+e/
         oSEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=/KEAHblGtUpnlB5yeKQbefU0sbuahyYF0I5FaPCPIlo=;
        b=WviqHmXoqWRlrV/vMWsM1ghGWWR8voUuj5wOXdsvR+Pma/9tS2yB8nygXrz0FIDXD7
         Hhe8rrbv7cTyDpEsCs+tb6t+2CgV0THaUD2wHKbNtsVx1eWXdSTXvBXkwJ3R4z+woerM
         hXmzm7e4CtThgBUL05d+GAGViBb81LGGFVsSgkYenDa2FIODcvygUWKp9AfMoD3RoASj
         D4l/g84x0VuU/UBsPrH3giGca3u/xF+SSfx+PfyBniXX+d/erRo1PmLjYIENlwcH3t1C
         LnuS8T7Nao6O6veHiV3PTc/0f0+sDtSwL1DkD0cZ+OYBzhBCyFuNc5LiLdiHfcCGRh9I
         AOIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JP0xr4uq;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id k76si13857pfa.10.2017.09.14.01.33.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:33:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JP0xr4uq;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e69so1209109pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/KEAHblGtUpnlB5yeKQbefU0sbuahyYF0I5FaPCPIlo=;
        b=JP0xr4uqv4jaVsOsOvdr6LJ/PJb2kPpUJoPsJMjZCzcs1ZH9WPuEsWIGs+wrPzwLWh
         VQtjnbJIG4kx35OJ2IPrIDYSrp1kU18dJZzAeoMoY50hyvh6mYwPXNcA2pO/bEWDlSk3
         OFYIl4VejW8T1pylqERL2K2CVlENGhgJ6keHpp3vLyxyqLoTKXuL2hO+G0qNR6z1uaMi
         o5YIsIdTw9FXwZC5DDb1mD/ohC7owhtCYNdPtsht19rt/C1BWySW7OmsIaoHNa7z930E
         anl43evsiv8Ia9mHi78XfrvuhMCyxR3zrmAUNXCJxHcntPKTAIiIcIrwJgfoGcNM629t
         FHIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/KEAHblGtUpnlB5yeKQbefU0sbuahyYF0I5FaPCPIlo=;
        b=t7+ay7GUgGCx/CIv+upv44BD2jWeF37bP3aLezQZ35mI48VIJcSB3bDjrd7hgSjVrE
         S/Stgk6oblxllLRSIN+5ojlpmBOKmHUWTf4nTFdwRtVxOAuMeI12Vuca1g+o22S/9fly
         ehA0iFbjB5UfvFEz+VfxN5+s7lgJYTE+YPWS7nv8mPugrZJJeeJly8MRx6l4VRJzCc8d
         y/1DPvFNYy2GAnRZLupfihjOfIsxdfmNQJ0m6dlwH6e2bQjVw1F7g4HbfItF6cvYbcPP
         bRSTodz1HBNkD/HHQtzofMpNm3qCo/5+uzmvII+pU5le6tHkYXSTJfobrtSU6V7fczuS
         Mt/A==
X-Gm-Message-State: AHPjjUhIASuSXN8ICvuEXhR6lv6wRvU3gXSspdLwqDih7d30odYoMjX7
	chOc7YN4vogd03ENbPo=
X-Google-Smtp-Source: ADKCNb6jTU8zIRsB2+j6fCD/PhkWkjMCkHti7COaTgd47PjE42qIIq74Oy/0ZBi78++aaDDSEO+h/Q==
X-Received: by 10.84.232.3 with SMTP id h3mr23805318plk.340.1505378000700;
        Thu, 14 Sep 2017 01:33:20 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id 20sm28996669pft.109.2017.09.14.01.33.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:33:19 -0700 (PDT)
Date: Thu, 14 Sep 2017 14:03:15 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/4] Staging: vc04_services: Remove code under comments
Message-ID: <ddd3ada72928429d67e69f307ebafb765f04c78e.1505377440.git.meghana.madhyastha@gmail.com>
References: <cover.1505377440.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505377440.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes the code under comments.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
 -None

Changes in v3:
 -Mention the changes across versions.


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


