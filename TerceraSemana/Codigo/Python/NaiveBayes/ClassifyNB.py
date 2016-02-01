def classify(features_train, labels_train):   
    ### import the sklearn module for GaussianNB
    ### create classifier
    ### fit the classifier on the training features and labels
    ### return the fit classifier
    
        
    ### your code goes here!
    from sklearn import datasets
    iris = datasets.load_iris()
    from sklearn.naive_bayes import GaussianNB
    gnb = GaussianNB()
    return gnb.fit(features_train, labels_train)
