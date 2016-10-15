X-GM-THRID: 6341262958071382016
X-Received: by 10.25.215.91 with SMTP id o88mr546418lfg.14.1476541644300;
        Sat, 15 Oct 2016 07:27:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.68.85 with SMTP id r82ls418126wma.0.gmail; Sat, 15 Oct 2016
 07:27:23 -0700 (PDT)
X-Received: by 10.194.26.101 with SMTP id k5mr525626wjg.12.1476541643490;
        Sat, 15 Oct 2016 07:27:23 -0700 (PDT)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id f1si228546wmf.2.2016.10.15.07.27.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 07:27:23 -0700 (PDT)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 992A84061F;
	Sat, 15 Oct 2016 15:27:22 +0100 (BST)
Subject: Re: [PATCH] tools: iio: iio_generic_buffer: add -A to force-enable
 all channels
To: Eva Rachel Retuya <eraretuya@gmail.com>, linux-iio@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <1476440319-11124-1-git-send-email-eraretuya@gmail.com>
Cc: knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <80bfc9a1-592e-3f8b-3a72-ea7259a74469@kernel.org>
Date: Sat, 15 Oct 2016 15:27:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1476440319-11124-1-git-send-email-eraretuya@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 14/10/16 11:18, Eva Rachel Retuya wrote:
> If attribute/s is/are already enabled (by default or via scripts or
> manual interaction), issuing -a will fail to enable the channels thereby
> one has to manually disable the said attribute/s before proceeding with
> auto-enabling.
> 
> Add a command-line option -A to force-activate all channels regardless
> of their current state.
> 
> Suggested-by: Alison Schofield <amsfield22@gmail.com>
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
Seems like a useful addition with minimal 'cost'.

Applied, though there was some fuzz due to a recent patch making
sure the ? was in the argument list, so please check I didn't mess
it up!

Applied to the togreg branch of iio.git - initially pushed out as
testing for the autobuilders to play with it.

Thanks,

Jonathan
> ---
>  tools/iio/iio_generic_buffer.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/iio/iio_generic_buffer.c b/tools/iio/iio_generic_buffer.c
> index f39c0e9..84c9888 100644
> --- a/tools/iio/iio_generic_buffer.c
> +++ b/tools/iio/iio_generic_buffer.c
> @@ -247,6 +247,7 @@ void print_usage(void)
>  	fprintf(stderr, "Usage: generic_buffer [options]...\n"
>  		"Capture, convert and output data from IIO device buffer\n"
>  		"  -a         Auto-activate all available channels\n"
> +		"  -A         Force-activate ALL channels\n"
>  		"  -c <n>     Do n conversions\n"
>  		"  -e         Disable wait for event (new data)\n"
>  		"  -g         Use trigger-less mode\n"
> @@ -347,16 +348,22 @@ int main(int argc, char **argv)
>  	int noevents = 0;
>  	int notrigger = 0;
>  	char *dummy;
> +	int force = 0;
>  
>  	struct iio_channel_info *channels = NULL;
>  
>  	register_cleanup();
>  
> -	while ((c = getopt_long(argc, argv, "ac:egl:n:N:t:T:w:", longopts, NULL)) != -1) {
> +	while ((c = getopt_long(argc, argv, "aAc:egl:n:N:t:T:w:", longopts,
> +		NULL)) != -1) {
>  		switch (c) {
>  		case 'a':
>  			autochannels = AUTOCHANNELS_ENABLED;
>  			break;
> +		case 'A':
> +			autochannels = AUTOCHANNELS_ENABLED;
> +			force = 1;
> +			break;
>  		case 'c':
>  			errno = 0;
>  			num_loops = strtoul(optarg, &dummy, 10);
> @@ -519,15 +526,15 @@ int main(int argc, char **argv)
>  			"diag %s\n", dev_dir_name);
>  		goto error;
>  	}
> -	if (num_channels && autochannels == AUTOCHANNELS_ENABLED) {
> +	if ((num_channels && autochannels == AUTOCHANNELS_ENABLED) && !force) {
>  		fprintf(stderr, "Auto-channels selected but some channels "
>  			"are already activated in sysfs\n");
>  		fprintf(stderr, "Proceeding without activating any channels\n");
>  	}
>  
> -	if (!num_channels && autochannels == AUTOCHANNELS_ENABLED) {
> -		fprintf(stderr,
> -			"No channels are enabled, enabling all channels\n");
> +	if ((!num_channels && autochannels == AUTOCHANNELS_ENABLED) ||
> +	    ((autochannels == AUTOCHANNELS_ENABLED) && force)) {
> +		fprintf(stderr, "Enabling all channels\n");
>  
>  		ret = enable_disable_all_channels(dev_dir_name, 1);
>  		if (ret) {
> 


