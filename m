X-GM-THRID: 6464947819093426176
X-Received: by 10.31.166.210 with SMTP id p201mr7983487vke.90.1505238820853;
        Tue, 12 Sep 2017 10:53:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.192.65 with SMTP id u62ls1631479itf.16.gmail; Tue, 12 Sep
 2017 10:53:40 -0700 (PDT)
X-Received: by 10.129.136.67 with SMTP id y64mr10127993ywf.78.1505238820108;
        Tue, 12 Sep 2017 10:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505238820; cv=none;
        d=google.com; s=arc-20160816;
        b=GU83IFLV4pbdukIKjTZnZP588cQY6XV4Jb8FrqFNoUvWbUkBD8yMqwKXfZJcj98vgU
         /DMYuRFuqmcMODz5+3n+pUPPR9hnec2ycebQQkz3ptKlzPXeBNUgociyUsr99y1cJ+Xp
         wRjoP9gXI6crNhol/V6hnjFX0QBHM6d/B5RioHkvZqhY0+saX9AlcYorSJVtuj18XWlA
         jnNd19hL9VJ99k5CkuPDbNr8PZTyb3Ull2Vxai0d9L0NRNXmwtrVw1agMAtlwF4mrcFe
         dDupFM12xjhHPTqDh1XtSc9VfKQYOgAzUL6Qw/m3JwQOBwdw/5knx2hNvTSPNRByH86u
         xipg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Qa41tqtdg/52z7jMJ2pS71ISh1uU34jYKRNYrt6Glys=;
        b=VA8KwaZt+h5N7TcpIRLi1OmlaKgBYwjd6Bs6NNt9OpJSWR9Hnn4td5jMHwUqn8ycTF
         TUr/RwQkqNsbITbCBSpLs0YmY/hXbwf7eEI116dS/xiFsX6mLiZuFt/GS30Ew9ClM6bh
         qhYhNVHTowaWbB471SJ7ZZUBg98hUCFe+JtvCgtPyfH9owv5hJMlVm/C4fpaAM2T+gL8
         gMarLhjLJNP5PIXtTfA9kiKlhhEnAQBAXDL23f3fzQZmUoMQ06ji/ReaJfxBLJYxZWlI
         oyOGj5YJhMTCejGOJUF4W+oGsKSF78gEygEyJSK43pVNyaeNA6F/KynHsuh0QbBpopkj
         /KPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IncVJinj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a12si1182312pfd.2.2017.09.12.10.53.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 10:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IncVJinj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id h4so6514883pfk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 10:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Qa41tqtdg/52z7jMJ2pS71ISh1uU34jYKRNYrt6Glys=;
        b=IncVJinjZ0R/xk1nOj749XDYm/ITWP/ZTF/n6aqvHunMyEYGoQFq/p8IUMkRmwStn0
         EsMx+lOGEJMLhVzM/+5qVvAEr/Jqv8onApXAts55igz+QncBL1ckAQMqoNiMDrb3W1T4
         xjzYXYsd397zAzeBraIN098T9MMKMgnHf1VY63SNQmmTTKZLzyfoVK/lNhXeiS5sM8p9
         tzinvGWtjB4pauBq6azZ4InfMduH3Qx5eJXEoJEfSaxxHZnhi/yrL+6gebjy9eLFtd13
         qPlraqxFOyEeip1jEfYqY8vxxgLk6Izi7/hYDiQB5QTnC1UF+87WPKfyT3hpOr1SeeV6
         ZLDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Qa41tqtdg/52z7jMJ2pS71ISh1uU34jYKRNYrt6Glys=;
        b=l6SWSM0SnIhtkFczILTm5p3DUgH9S+tp6DWCedIez8iveJM/i2WggCFB5awyjaSu8q
         iPOFIjWU8rUorv30T2+NFPn9w6eLqQxIalTfUz7N159U+dyezzSuAYgt8eVRxy0hUR/5
         7k238tpoEzvIrtAFdw0pI9JYGvf5G/WipbQ1NodqiNV8OAMl2Ohkl27uPHOLkGmN2Evb
         fBH8LR24Q9pbjM6T0wzUDMJo5eeQIwUeFVYHU8iK74CUCDOnpXeJa4fsxFhSq5eJG45n
         dlw6S9fhfOrQjJBt/cMqbqpzWykZOsKWFkqFxQy2tdYBVJqUHIIXYQGi6gEaG9T9+cLA
         QrEQ==
X-Gm-Message-State: AHPjjUiZZAGa1KijE9Lua+06S0iHhnerFRnO1DveipUTcanUVcrn6ZzZ
	wYREvL+PHaE/lNkom/k=
X-Google-Smtp-Source: ADKCNb4B0XP6CmlVWkDAhCSmt2kW7oJzXAtnu4Cc9nOySZjyVDMDDMvAPS9XA/T8bk0bz++NtexuUA==
X-Received: by 10.99.181.79 with SMTP id u15mr15605654pgo.116.1505238819856;
        Tue, 12 Sep 2017 10:53:39 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id g76sm22879106pfa.134.2017.09.12.10.53.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 10:53:39 -0700 (PDT)
Date: Tue, 12 Sep 2017 23:23:34 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: vc04_services: Remove commented lines
Message-ID: <6f42903a2604ac3e057e92382fff0ecff839ccc3.1505234866.git.meghana.madhyastha@gmail.com>
References: <cover.1505234866.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505234866.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the commented extern declarations
as they are not used.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 7281a01..c1c9073 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -343,8 +343,6 @@ extern int32_t vchi_bulk_queue_transmit( VCHI_SERVICE_HANDLE_T handle,
 
 // function prototypes for the different mid layers (the state info gives the different physical connections)
 extern const struct opaque_vchi_connection_api_t *single_get_func_table( void );
-//extern const struct opaque_vchi_connection_api_t *local_server_get_func_table( void );
-//extern const struct opaque_vchi_connection_api_t *local_client_get_func_table( void );
 
 // declare all message drivers here
 const VCHI_MESSAGE_DRIVER_T *vchi_mphi_message_driver_func_table( void );
-- 
2.7.4


