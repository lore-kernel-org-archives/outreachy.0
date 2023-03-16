Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABE23C00
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 15:27:16 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id gp15-20020a17090adf0f00b0023d1bbd9f9eso5784227pjb.0
        for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 08:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678980436;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eKZWoU1Wv2XE/Zee/O+ZIAf3IdQQYvPVg2JkkM7XXGQ=;
        b=cn0nwm342pZ0cuPralV3A2FAwpTSDuNbHG51RU4cLZT+DYH1wCRs0hqNNNfubpZCYy
         iJmgxU3qaGxQznG0XOQyeCzOyMvtqTGYYPeSuahrxnz0EcKE+F5jBQqtqvHWStD96joD
         vSggG+TdCT5MU3N3EZ9dRJSjVOY0wG3bOcKtaIgfQgcE1CzW0P81itaw+D+FWTPb3OA3
         2diSlT12M7O8I8o/YxRhI52BP+G8h+bYvakn5hL3AY0Bonzb433B40EfYV1dFSspD1o1
         eoR/CXBMwJpc2lhiCe2WLE8V7FwX2Wqej1Fgi9kn6h/2+vKRS3gMO8+GAs2SnolNe7RE
         XLJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678980436;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eKZWoU1Wv2XE/Zee/O+ZIAf3IdQQYvPVg2JkkM7XXGQ=;
        b=nWWeFhvbuAxUEV7b6c2N+oVBfhCZig6DiJVGc0H+9iJ9bcsmtGIonkwXRKtmhDdKYY
         lFDEUCcQvXbuZl3XDWQ8CvRdo94Garg5+FDnGGj6xXOY98hN9XppeL+QLlmkziM9Z8WX
         R70enjvcjVDVO7hKGH+4myXw3pZWbXNpRXz8IWr+BftK5S0orWMytcf6p9GSeBgxeUVU
         atdW67kjhO/WdO+7aq/NFQNccu3WOcb5lF+ph7b2dSnMkhkejn2lWslYcr/D5mjhUBQ/
         glVZX9mhhs6piuifmrIkKQhQk+Uk91wud0BhSTRzc53KE1jvJisjVUFLg8Czx7ZczNza
         cQFA==
X-Gm-Message-State: AO0yUKWYEbL04k/efnceE6MLe7p6pn7X0ggOrmhURq4oNAYw+IJj1cwc
	7+LFgfO74DzIkClXPoGzqWY=
X-Google-Smtp-Source: AK7set/gg1LoxJZXCYmOtfcFbX45FbQUGIGoNYYArE+HuCbG9WcdmXlbUvb+XqdZVg3AuuyCCWGPdw==
X-Received: by 2002:a05:6a21:3391:b0:cc:b1eb:e5f7 with SMTP id yy17-20020a056a21339100b000ccb1ebe5f7mr4761075pzb.23.1678980436017;
        Thu, 16 Mar 2023 08:27:16 -0700 (PDT)
Received: from sumitra.com ([117.245.254.247])
        by smtp.gmail.com with ESMTPSA id p18-20020a62ab12000000b005a84de344a6sm372130pff.14.2023.03.16.08.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 08:27:15 -0700 (PDT)
Date: Thu, 16 Mar 2023 08:27:12 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Info] Ask for help finding cleanups
Message-ID: <20230316152712.GA81902@sumitra.com>
References: <ZBEIAKymniRkamjr@aschofie-mobl2>
 <20230316131656.GB47401@sumitra.com>
 <ZBMwpDSM3W2IDso4@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBMwpDSM3W2IDso4@aschofie-mobl2>

On Thu, Mar 16, 2023 at 08:07:16AM -0700, Alison Schofield wrote:
> On Thu, Mar 16, 2023 at 06:16:56AM -0700, Sumitra Sharma wrote:
> > On Tue, Mar 14, 2023 at 04:49:20PM -0700, Alison Schofield wrote:
> > > Hi Applicants,
> > > 
> > > We want to support you finding cleanups. Today I spent some time
> > > looking through staging and am working up a small todo list that
> > > may be useful.
> > > 
> > > I posted one such cleanup to Menna because I saw them submit a
> > > couple of attempts at a first patches.
> > > 
> > > I think that Kloudifold, Khadija, and Sumitra are busy iterating on
> > > their first patches. Keep going! Ask for help finding your second
> > > patch if needed.
> > > 
> > 
> > Hi Alison,
> > 
> > My first patch is accepted. I will appreciate if you could help me to find a
> > second patch.
> >  
> > Regards,
> > 
> > Sumitra
> 
> Congratulations on getting the patch accepted!
> I do see you sent another patch, and GregKH responded that it needs
> followup. He sent his automatic, problem with commit message and or
> commit log email. Revisit the docs he suggested and the first patch
> tutorial and see if you can come up with a rev 2 where the commit
> message 'says what you did' and the commit log 'says why you did it'.
> 

Hi Alison,

I will work this way, Thank you for your guidance.

Regards,

Sumitra
