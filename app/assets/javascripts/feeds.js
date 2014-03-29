// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


function FeedsView(container){

	this.container = container;
	this.init();

};

FeedsView.prototype.init = function(){
	this.attachEvents();
};

FeedsView.prototype.attachEvents = function(){
	var _this = this;
	this.container.on("click",".action",function(e){
		_this.handleClick(e);
		e.preventDefault();
	}).addClass("bound")
};



FeedsView.prototype.handleClick = function(e){

	var target = jQuery(e.target);
	if(target.hasClass("vote-up")){
		this.voteUp(target);
	}

	if(target.hasClass("vote-down")){
		this.voteDown(target);
	}
};

FeedsView.prototype.voteUp = function(ele){

};

FeedsView.prototype.voteDown = function(ele){

};


FeedsView.prototype.destroy = function(){
	
};


amplify.subscribe("AppBooted",function(){

	var appFeedContainer = jQuery("#app-feed-container:not(.bound)");

	if(appFeedContainer.length){
		ideaApp.feedView = new FeedsView(appFeedContainer)
	}
	
})