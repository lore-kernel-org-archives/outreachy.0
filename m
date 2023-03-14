Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E808B15A3
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 06:30:18 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id y4so28244044edo.2
        for <outreachy@lists.linux.dev>; Mon, 13 Mar 2023 23:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678775417;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gwepz2GOT/yrKU4msoi5g8IJM282RkqzTW3xBDuANF8=;
        b=P9GvHQIRKs5xLdn02eAF06pJ5ky36+BLxyh/bfBNcTa7Od/AHCb5o16aVbkYpWDXda
         afDLyzFM929S9fwdQ+MRnI4jydeFtUjlgPHY4zWfnX1TclxSEcA6QNIAHHA+gvRZOvRv
         x+857C6llIksrsmZchZN0cmGTIN4sM1PTrtN3xsU7/T4CaSRZsAdxQdHxeLJmtlQB6fA
         UsaEv0xT0qd57LAk4QzWVQPsFTa4eq8v53zlxhoa7Crkxy8u677zW1Uv+GB5Sg4PmaGG
         EjoCLoV9Jl0acE5ypAlOEG0M71YD0EF+LGocAeygY2J9RX2bVHS+qbwFRy8FSTpE8upY
         Etxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678775417;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gwepz2GOT/yrKU4msoi5g8IJM282RkqzTW3xBDuANF8=;
        b=vyJzWDj4HFkbehVJNOxXX7oL65Qd7W/mYCFh+3CNWbYQlCxkmF/A6dMWxQkJ9Irl2v
         sHS99CskoBNDZj+oDU6T0qabOxhoGW8qsarBO9WkQrn8v5oH1k08kezwMYzzHklr9kj7
         VEHxeMGovJHwt4IxozBi/v7TarFkT8x5VIK4radoNHaOWdtAqrvMG9H/zF0R/3QFVcNG
         qWkvp0quZIAl8G3UsZIVw/3N2tc3ePbXnthVau/SazRt3AHoBrv7S6A4SuC3mUG90M8W
         BhDhZyUmHnXjB3SdAMs7TqbKUj2joi+J7lntRYr45ZuyBAdjoWwoLRHP2tgyoYVAR4bR
         N/9w==
X-Gm-Message-State: AO0yUKW+tr3B8hzR+W/qN+Y5B96E6d+6mvRDWuNqU+v9q/vNclcRAfHL
	bcKLzn+inHAYe54wd+GvFKcCbH6ceXXyIV6H
X-Google-Smtp-Source: AK7set9cvXPDDHryPCJPShuTHIwpN0zl2EZlEGM2Qdww8vD6VHT2WeIIu27fGeXKEASumKSQatGHVQ==
X-Received: by 2002:a17:906:edcc:b0:928:a2:904e with SMTP id sb12-20020a170906edcc00b0092800a2904emr1217504ejb.54.1678775416752;
        Mon, 13 Mar 2023 23:30:16 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.45.115])
        by smtp.gmail.com with ESMTPSA id qk28-20020a170906d9dc00b008f398f25beesm649977ejb.189.2023.03.13.23.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 23:30:16 -0700 (PDT)
Date: Tue, 14 Mar 2023 11:30:13 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Kloudifold <cloudifold.3125@gmail.com>
Cc: alison.schofield@intel.com, outreachy@lists.linux.dev
Subject: Re: Help in patch message
Message-ID: <ZBAUdXNB82OfyP65@khadija-virtual-machine>
References: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>

On Tue, Mar 14, 2023 at 09:53:46AM +0800, Kloudifold wrote:
> Dear Outreachy Mentors,
> 
> I hope this email finds you well. As an Outreachy applicant,
> I have been working on submitting patches to the kernel, but
> I seem to be having trouble getting them accepted. I have
> read the Outreachy tutorials and tried to follow the best practices,
> but my patch messages keep getting rejected.
> 
> I really wonder if I have some kind of language problem, I don't
> actually know how to say something?
> 
> Recently, I submitted a patch that has been rejected, and I am not
> sure whether to go ahead and fix it or create a new one.
> I would greatly appreciate your guidance on how to proceed
> 
> Thank you for your help and guidance throughout this process.
> I look forward to your response.
> 
> Best regards,
> 
> Kloudifold
> 
>

Hey Kloudifold!
Just keep going and do not give up. Keep asking questions if you get
stuck. You are already done with the setup. Patches are taking time for
me too. So I have submitted them with revisions. And if a change is not
accepted I go through some other files and send new patches. 
Best of luck! :)

Regards,
Khadija 

